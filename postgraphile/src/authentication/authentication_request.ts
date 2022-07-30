import { ExtensionDefinition, gql, makeExtendSchemaPlugin } from 'postgraphile'

interface AuthenticationResponse {
    accessToken: String,
    refreshToken: String
}

export const AuthenticatePlugin = makeExtendSchemaPlugin(() => {
    return <ExtensionDefinition>{
      typeDefs:  gql`
        type AuthenticationResponse {
            accessToken: String,
            refreshToken: String
        }

        extend type Mutation {
            authenticate(username: String, password: String): AuthenticationResponse
        }
      `,
      resolvers: {
        Mutation: {
            authenticate: (_query, args): AuthenticationResponse => {
              const source = args.idToken

              return {
                accessToken: source,
                refreshToken: 'tits'
              }
            }
        }
      },
    };
  });

