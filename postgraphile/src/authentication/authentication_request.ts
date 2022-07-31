import { ExtensionDefinition, gql, makeExtendSchemaPlugin } from 'postgraphile'
import crypto from 'crypto'

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
            authenticate(token: String): AuthenticationResponse
        }
      `,
      resolvers: {
        Mutation: {
            authenticate: (_query, args): AuthenticationResponse => {
              const source = args.idToken

              return {
                accessToken: source,
                refreshToken: crypto.randomBytes(64).toString('hex')
              }
            }
        }
      },
    };
  });

