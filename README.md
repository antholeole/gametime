# WIP!!!

## Summary

OSS Hudl (https://www.hudl.com) like software. Single tenant (designed for self hosting). An admin can upload game film and then annotate it with specific highlights (Create a "Good Goal" album) and comments ("Tom needs to work on his positioning here"). 

The film is locked behind a portal. A secret key should be shared with all players on the team so that they can access the portal. Film is stored in any S3 compatible API (CDK is setup for Linode). Film should be uploaded in MP4 format. 

## Architecture 

As an overview, I use S3 with signed links for object storage, GraphQL to communicate with the backend, and Golang for custom resolvers. The frontend is Flutter. Everything has tests; if I ever commit without a test, that is not me that is an imposter. 

To activate the first class dev-environment, run `scripts/all.sh`. This will activate the following scripts:
- Open Hasura console, so that any schema changes gets persisted to migrations and ran in CD
- Watch for changes in DB schema, so that a new GraphQL schema can be generated for frontend and golang.
- Any code generation is ran on any change to the respective repository; for instance, if any changes are made in the `fns` folder, all generated code in that folder will be regenerated.

Finally, everything should just work locally. DB, backend, and S3 are containerized in the docker-compose.

1. **Login Flow**: Anyone who accesses the URL can login to the application. The login is anonymous (although an ID is provided in the claims of the JWT for potential spam detection). A user login may only view film and comments on the film, and may not leave comments or upload film. An _admin_ may upload film and add comments to the film, as well as any permissions the ordinary user has. Authentication is provided through the form of a JWT (HMAC for ease of use). Users are _not_ stored in the database; this is because the only form of authentication is a secret access token (for ease of self hosting). 
2. **Uploading Film**: Film is stored in an S3 complient object storage. No images go through the backend; instead, the backend returns signed links for PUT and for GET. The bucket is also under a strict ACL; therefore, any request made to the bucket must have the provided JWT in the header.
3. **Everyting Else**: Literally everything else is standard GraphQL. The backend has a query whitelist to avoid any malicous actors, but we also secure the backend with access control policies.
4. **Ops**: CI/CD are ran in github actions. Deployment is done to an IP, so that we don't have to worry about DNS or anything like that - If you'd like you can put your own domain infront of the server. Tests are ran in CI.


## Developing

Everything is under `docker-compose`. You'll need a `.env`. Follow the following template:

```.env
POSTGRES_USER=<ANY STRING>
POSTGRES_PASSWORD=<ANY STRING>
POSTGRES_DB=<ANY STRING>
POSTGRES_HOST=<ANY STRING>
POSTGRES_PORT=<ANY PORT>
JWT_SECRET=<ANY STRING>
WEBHOOK_URL=http://fns:3000 # Keep this one
WEBHOOK_SECRET_KEY=<ANY STRING>
ADMIN_SECRET=<ANY STRING> 
ADMIN_LOGIN_SECRET=<ANY STRING> # The secret that admins will use to login (those who can upload film)
USER_LOGIN_SECRET=<ANY STRING> # The secret that users will use to login (those who can watch film)
HASURA_ENDPOINT=http://hasura:8080/v1/graphql # keep this one
API_PORT=3000 # keep this
BUCKET_NAME=<ANY STRING>
OBJECT_STORAGE_ACCESS_KEY=<ANY STRING>
OBJECT_STORAGE_ACCESS_SECRET=<ANY STRING>
OBJECT_STORAGE_ADDRESS=127.0.0.1:9001 # keep this
OBJECT_STORAGE_REGION=<ANY STRING> 
OBJECT_STORAGE_USE_SSL=false # probably should turn to true for production but what do I know!
```
Once you have that `.env`, `docker-compose up` in the root should launch the backend. `flutter run` in the `mobile` directory should launch the webapp. I recommend using `--device chrome` or `--device macos` but that's up to you.

## Deploying

This is a big TODO, but the goal is to use Pulumi CDK to deploy to Linode cloud. I'm choosing linode because:
- Cheap server hosting ($5 / mo. Nanode)
- S3 complience with their object store
- My personal AWS account was banned because I had a 13 cent charge and my credit card expired

Tests should be ran in CI, and deploy should run in CD. CI/CD will use github actions once there are 8 days a week and I have more time to develop this.
