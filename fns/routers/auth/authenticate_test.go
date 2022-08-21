package auth

import (
	"bytes"
	"encoding/json"
	apiUtils "local/api_utils"
	"local/queries"
	"local/services"
	testutils "local/test_utils"
	mockServices "local/test_utils/mock_services"
	"net/http"
	"net/http/httptest"
	"os"
	"testing"

	"github.com/Khan/genqlient/graphql"
	"github.com/gin-gonic/gin"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/mock"
)

var authRoutePath = "/auth/authenticate"

func buildMockApi(gqlC graphql.Client, jwtC services.JwtClient) *gin.Engine {
	api := gin.Default()
	authRouter := api.Group("/auth")

	authenticateRoute(authRouter, &gqlC, jwtC)

	return api
}

const fakeId = "fakeID"
const fakeRefreshToken = "rToken"
const fakeInputToken = "fakeInputToken"
const fakeAccessToken = "fakeAccessToken"

func TestValidAdminInputToken(t *testing.T) {
	var resp graphql.Response = graphql.Response{
		Data: queries.NewUserResponse{
			Insert_private_users_one: queries.NewUserInsert_private_users_onePrivate_users{
				Id:            fakeId,
				Refresh_token: fakeRefreshToken,
			},
		},
	}
	gqlC := &mockServices.FakeHasuraClient{Resp: &resp}
	jwtC := &mockServices.FakeJwtClient{}

	api := buildMockApi(gqlC, jwtC)
	r := httptest.NewRecorder()
	jsonBody, _ := json.Marshal(apiUtils.HasuraInboundRequest[authenticateInput]{
		Input: authenticateInput{
			Token: fakeInputToken,
		},
	})

	os.Setenv(adminLoginTokenEnvKey, fakeInputToken)
	gqlC.On("MakeRequest", mock.Anything, mock.Anything, mock.Anything).Return(nil)
	jwtC.On("Sign", mock.Anything).Return(fakeAccessToken, nil)

	req, _ := http.NewRequest("POST", authRoutePath, bytes.NewReader(jsonBody))
	api.ServeHTTP(r, req)

	assert.Equal(t, r.Result().StatusCode, 200, "Http Response not 200")

	var serverSentMessage authenticateResponse
	json.Unmarshal(r.Body.Bytes(), &serverSentMessage)

	assert.Equal(t, serverSentMessage.AccessToken, fakeAccessToken)
	assert.Equal(t, serverSentMessage.Admin, true)
	assert.Equal(t, serverSentMessage.RefreshToken, fakeRefreshToken)
}

func TestValidUserInputToken(t *testing.T) {
	var resp graphql.Response = graphql.Response{
		Data: queries.NewUserResponse{
			Insert_private_users_one: queries.NewUserInsert_private_users_onePrivate_users{
				Id:            fakeId,
				Refresh_token: fakeRefreshToken,
			},
		},
	}
	gqlC := &mockServices.FakeHasuraClient{Resp: &resp}
	jwtC := &mockServices.FakeJwtClient{}

	api := buildMockApi(gqlC, jwtC)
	r := httptest.NewRecorder()
	jsonBody, _ := json.Marshal(apiUtils.HasuraInboundRequest[authenticateInput]{
		Input: authenticateInput{
			Token: fakeInputToken,
		},
	})

	os.Setenv(userLoginTokenEnvKey, fakeInputToken)
	gqlC.On("MakeRequest", mock.Anything, mock.Anything, mock.Anything).Return(nil)
	jwtC.On("Sign", mock.Anything).Return(fakeAccessToken, nil)

	req, _ := http.NewRequest("POST", authRoutePath, bytes.NewReader(jsonBody))
	api.ServeHTTP(r, req)

	assert.Equal(t, r.Result().StatusCode, 200, "Http Response not 200")

	var serverSentMessage authenticateResponse
	json.Unmarshal(r.Body.Bytes(), &serverSentMessage)

	assert.Equal(t, serverSentMessage.AccessToken, fakeAccessToken)
	assert.Equal(t, serverSentMessage.Admin, false)
	assert.Equal(t, serverSentMessage.RefreshToken, fakeRefreshToken)
}

func TestInvalidInputToken(t *testing.T) {
	var resp graphql.Response = graphql.Response{
		Data: queries.NewUserResponse{
			Insert_private_users_one: queries.NewUserInsert_private_users_onePrivate_users{
				Id:            fakeId,
				Refresh_token: fakeRefreshToken,
			},
		},
	}
	gqlC := &mockServices.FakeHasuraClient{Resp: &resp}

	api := buildMockApi(gqlC, nil)
	r := httptest.NewRecorder()
	jsonBody, _ := json.Marshal(apiUtils.HasuraInboundRequest[authenticateInput]{
		Input: authenticateInput{
			Token: fakeInputToken,
		},
	})

	os.Setenv(userLoginTokenEnvKey, "OTHER STR")
	os.Setenv(adminLoginTokenEnvKey, "OTHER STR")

	gqlC.On("MakeRequest", mock.Anything, mock.Anything, mock.Anything).Return(nil)

	req, _ := http.NewRequest("POST", authRoutePath, bytes.NewReader(jsonBody))
	api.ServeHTTP(r, req)

	testutils.VerifyWebhookError(t, r, "", 401)
}
