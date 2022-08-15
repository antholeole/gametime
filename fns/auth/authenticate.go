package auth

import (
	"context"
	"fmt"
	"os"

	apiUtils "local/api_utils"
	"local/queries"
	"local/services"

	"github.com/Khan/genqlient/graphql"
	"github.com/gin-gonic/gin"
)

const adminLoginTokenEnvKey = "ADMIN_LOGIN_SECRET"
const userLoginTokenEnvKey = "USER_LOGIN_SECRET"

type authenticateInput struct {
	Token string `json:"token"`
}

type authenticateResponse struct {
	AccessToken  string `json:"access_token"`
	RefreshToken string `json:"refresh_token"`
	Id           string `json:"id"`
	Admin        bool   `json:"admin"`
}

func authenticateRoute(
	rg *gin.RouterGroup,
	gqlClient *graphql.Client,
	jwtClient *services.JwtClient,
) {
	rg.POST("/authenticate", func(c *gin.Context) {
		var input apiUtils.HasuraInboundRequest[authenticateInput]

		if err := c.BindJSON(&input); err != nil {
			apiUtils.SendHasuraError(c, 400, fmt.Sprintf("undecypherable input (%s)", err), nil)
			return
		}

		var isAdmin bool
		if token := input.Input.Token; token == os.Getenv(adminLoginTokenEnvKey) {
			isAdmin = true
		} else if token == os.Getenv(userLoginTokenEnvKey) {
			isAdmin = false
		} else {
			apiUtils.SendHasuraError(c, 401, "Invalid authentication token", nil)
			return
		}

		resp, err := queries.NewUser(context.Background(), *gqlClient, isAdmin)
		if err != nil {
			apiUtils.SendHasuraError(c, 500, fmt.Sprintf("Hasura error: %s", fmt.Sprint(err)), nil)
			return
		}

		a, err := (*jwtClient).Sign(&services.JwtClaims{
			UserId: resp.Insert_private_users_one.Id,
			Admin:  isAdmin,
		})

		if err != nil {
			apiUtils.SendHasuraError(c, 500, fmt.Sprintf("Error encoding access token: %s", fmt.Sprint(err)), nil)
		}

		c.JSON(200, authenticateResponse{
			AccessToken:  a,
			RefreshToken: resp.Insert_private_users_one.Refresh_token,
			Id:           resp.Insert_private_users_one.Id,
			Admin:        isAdmin,
		})
	})
}
