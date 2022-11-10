package services

import (
	"log"
	"os"
	"strconv"
	"time"

	"github.com/aws/aws-sdk-go/aws"
	"github.com/aws/aws-sdk-go/aws/credentials"
	"github.com/aws/aws-sdk-go/aws/session"
	"github.com/aws/aws-sdk-go/service/s3"
)

type ObjectStorageClient interface {
	Sign(key string, contentType string, size int64) (string, error)
}

// We're using the S3 client, but this should work with any
// S3 compatible object store.
type objectStorageClient struct {
	objectService *s3.S3
}

func (oss objectStorageClient) Sign(key string, contentType string, size int64) (string, error) {
	b := os.Getenv("BUCKET_NAME")

	req, _ := oss.objectService.PutObjectRequest(&s3.PutObjectInput{
		Bucket:        &b,
		Key:           &key,
		ContentType:   &contentType,
		ContentLength: &size,
	})

	urlStr, err := req.Presign(15 * time.Minute)

	if err != nil {
		return "", err
	}

	return urlStr, nil
}

func NewObjectStorageClient() ObjectStorageClient {
	useSsl, err := strconv.ParseBool(os.Getenv("OBJECT_STORAGE_USE_SSL"))

	if err != nil {
		log.Fatalln(err)
	}

	sess := session.Must(session.NewSession(&aws.Config{
		Region: aws.String(os.Getenv("OBJECT_STORAGE_REGION")),
		Credentials: credentials.NewCredentials(&credentials.StaticProvider{
			Value: credentials.Value{
				AccessKeyID:     os.Getenv("OBJECT_STORAGE_ACCESS_KEY"),
				SecretAccessKey: os.Getenv("OBJECT_STORAGE_ACCESS_SECRET"),
			},
		}),
		DisableSSL:       aws.Bool(!useSsl),
		S3ForcePathStyle: aws.Bool(true),
		Endpoint:         aws.String(os.Getenv("OBJECT_STORAGE_ADDRESS")),
	}))

	svc := s3.New(sess)

	// Create an uploader with the session and default options
	return objectStorageClient{
		objectService: svc,
	}
}
