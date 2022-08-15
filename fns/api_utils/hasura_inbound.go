package api_utils

type HasuraInboundRequest[T interface{}] struct {
	Input T `json:"input"`
}
