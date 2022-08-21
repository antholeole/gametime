package film

import (
	"context"
	"fmt"
	apiUtils "local/api_utils"
	"local/queries"
	"local/services"

	"github.com/Khan/genqlient/graphql"
	"github.com/gin-gonic/gin"
)

type uploadResponse struct {
	UploadUrl string `json:"upload_url"`
}

type newFilmInput struct {
	Name    string `json:"name"`
	Comment string `json:"comment"`
}

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

		resp, err := queries.NewFilm(context.Background(), *gqlClient, input.Input.Name, input.Input.Comment)

		if err != nil {
			apiUtils.SendHasuraError(c, 400, fmt.Sprintf("Failed creating film: %s", err), nil)
			return
		}

		url, err := objectStorageService.Sign(resp.Insert_film_one.Id)

		if err != nil {
			apiUtils.SendHasuraError(c, 500, fmt.Sprintf("Error while sigining link: %s", fmt.Sprint(err)), nil)
			return
		}

		c.JSON(200, uploadResponse{
			UploadUrl: url,
		})
	})
}
