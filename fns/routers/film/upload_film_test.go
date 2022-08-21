package film

import (
	"bytes"
	"encoding/json"
	apiUtils "local/api_utils"
	"local/queries"
	"local/services"
	mockServices "local/test_utils/mock_services"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/Khan/genqlient/graphql"
	"github.com/gin-gonic/gin"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/mock"
)

var filmRoutePath = "/film/upload"

func buildMockApi(gqlC graphql.Client, osC services.ObjectStorageClient) *gin.Engine {
	api := gin.Default()
	authRouter := api.Group("/film")

	filmUploadRoute(authRouter, &gqlC, osC)

	return api
}

const fakeId = "fakeId"
const fakeFilmName = "fakeFilmName"
const fakeFilmComment = "fakeFilmComment"
const fakeSigningLink = "fakeSigningLink"

func TestValidUpload(t *testing.T) {
	var resp graphql.Response = graphql.Response{
		Data: queries.NewFilmResponse{
			Insert_film_one: queries.NewFilmInsert_film_oneFilm{
				Id: fakeId,
			},
		},
	}
	gqlC := &mockServices.FakeHasuraClient{Resp: &resp}
	osC := &mockServices.FakeObjectStorageService{}

	api := buildMockApi(gqlC, osC)
	r := httptest.NewRecorder()
	jsonBody, _ := json.Marshal(apiUtils.HasuraInboundRequest[newFilmInput]{
		Input: newFilmInput{
			Name:    fakeFilmName,
			Comment: fakeFilmComment,
		},
	})

	gqlC.On("MakeRequest", mock.Anything, mock.Anything, mock.Anything).Return(resp)
	osC.On("Sign", mock.Anything).Return(fakeSigningLink, nil)

	req, _ := http.NewRequest("POST", filmRoutePath, bytes.NewReader(jsonBody))
	api.ServeHTTP(r, req)

	assert.Equal(t, r.Result().StatusCode, 200, "Http Response not 200")

	var serverSentMessage uploadResponse
	json.Unmarshal(r.Body.Bytes(), &serverSentMessage)

	assert.Equal(t, fakeSigningLink, serverSentMessage.UploadUrl)
}
