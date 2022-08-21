package mock_services

import (
	"context"
	"encoding/json"

	"github.com/Khan/genqlient/graphql"
	"github.com/stretchr/testify/mock"
)

type FakeHasuraClient struct {
	mock.Mock
	Resp *graphql.Response
}

func (c FakeHasuraClient) MakeRequest(ctx context.Context, req *graphql.Request, resp *graphql.Response) error {
	args := c.Called(ctx, req, resp)

	j, err := json.Marshal(c.Resp)

	if err != nil {
		return err
	}

	if err := json.Unmarshal(j, resp); err != nil {
		return err
	}

	switch r := args.Get(0).(type) {
	case error:
		return r
	default:
		return nil
	}
}
