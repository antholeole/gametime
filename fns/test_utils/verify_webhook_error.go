package testutils

import (
	"encoding/json"
	"fmt"
	"net/http/httptest"
	"testing"

	apiUtils "local/api_utils"
)

func VerifyWebhookError(
	t *testing.T,
	r *httptest.ResponseRecorder,
	message string,
	code int,
) {
	if statusCode := r.Result().StatusCode; statusCode != apiUtils.HasuraErrorStatusCode {
		t.Errorf(fmt.Sprintf("Http Response did not get denied (got %d)", statusCode))
	}

	var serverSentMessage apiUtils.WebhookError
	err := json.Unmarshal(r.Body.Bytes(), &serverSentMessage)

	if err != nil {
		t.Errorf(fmt.Sprintf("Webhook responded with undecypherable body (%s)", fmt.Sprint(err)))
		return
	}

	if wantedCodeStr := fmt.Sprint(code); serverSentMessage.Code != wantedCodeStr {
		t.Errorf(fmt.Sprintf(
			"Webhook responded with incorrect error code. (Got %s, wanted %s)", serverSentMessage.Code, wantedCodeStr,
		))
	}

	if message != "" && serverSentMessage.Message != message {
		t.Errorf(fmt.Sprintf(
			"Webhook responded with incorrect error message. (Got \"%s\", wanted \"%s\")", serverSentMessage.Message, message,
		))
	}
}
