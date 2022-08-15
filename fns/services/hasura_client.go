package services

import (
	"net/http"
	"os"

	"github.com/Khan/genqlient/graphql"
)

type transport struct {
	underlyingTransport http.RoundTripper
}

func (t *transport) RoundTrip(req *http.Request) (*http.Response, error) {
	req.Header.Add("x-hasura-admin-secret", os.Getenv("HASURA_ADMIN_SECRET"))
	return t.underlyingTransport.RoundTrip(req)
}

func NewHasuraClient() *graphql.Client {
	c := http.Client{Transport: &transport{underlyingTransport: http.DefaultTransport}}
	g := graphql.NewClient(os.Getenv("HASURA_ENDPOINT"), &c)
	return &g
}
