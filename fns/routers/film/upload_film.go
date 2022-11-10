package film

import (
	"context"
	"fmt"
	apiUtils "local/api_utils"
	"local/queries"
	"local/services"

	"github.com/Khan/genqlient/graphql"
	"github.com/gin-gonic/gin"
	"golang.org/x/exp/slices"
)

type uploadResponse struct {
	UploadUrl string `json:"upload_url"`
}

type newFilmInput struct {
	Name          string `json:"name"`
	Comment       string `json:"comment"`
	ContentLength int64  `json:"content-length"`
	ContentType   string `json:"content-type"`
}

var supportedContentTypes = []string{"MPEG-4/H.264"}

func filmUploadRoute(
	rg *gin.RouterGroup,
	gqlClient *graphql.Client,
	objectStorageService services.ObjectStorageClient,
) {
	rg.POST("/upload", func(c *gin.Context) {
		var input apiUtils.HasuraInboundRequest[newFilmInput]

		if err := c.BindJSON(&input); err != nil {
			apiUtils.SendHasuraError(c, 400, fmt.Sprintf("undecypherable input (%s)", err), nil)
			return
		}

		if contentType := input.Input.ContentType; !slices.Contains(supportedContentTypes, contentType) {
			em := fmt.Sprintf(
				"unsupported  content type (%s) (need %s)",
				contentType,
				fmt.Sprint(supportedContentTypes),
			)
			apiUtils.SendHasuraError(c, 400, em, nil)
			return
		}

		resp, err := queries.NewFilm(
			context.Background(),
			*gqlClient,
			input.Input.Name,
			input.Input.Comment,
		)

		if err != nil {
			apiUtils.SendHasuraError(c, 400, fmt.Sprintf("Failed creating film: %s", err), nil)
			return
		}

		url, err := objectStorageService.Sign(
			resp.Insert_film_one.Id,
			input.Input.ContentType,
			input.Input.ContentLength,
		)

		if err != nil {
			apiUtils.SendHasuraError(c, 500, fmt.Sprintf("Error while sigining link: %s", fmt.Sprint(err)), nil)
			return
		}

		c.JSON(200, uploadResponse{
			UploadUrl: url,
		})
	})
}
