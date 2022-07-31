import { ExtensionDefinition, gql, makeExtendSchemaPlugin } from 'postgraphile'
import crypto from 'crypto'
import njwt, { JSONMap } from 'njwt'

interface AuthenticationResponse {
  accessToken: String,
  refreshToken: String
}

const { USER_SECRET, ADMIN_SECRET, JWT_SECRET } = process.env

export const AuthenticatePlugin = makeExtendSchemaPlugin(() => {
  return <ExtensionDefinition>{
    typeDefs: gql`
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
        authenticate: async (_query, args: { token: string }): Promise<AuthenticationResponse> => {
          const source = args.token

          let jwtBody: null | JSONMap = null

          switch (source) {
            case ADMIN_SECRET:
              jwtBody = { admin: true }
              break
            case USER_SECRET:
              jwtBody = { admin: false }
              break
            default:
              throw Error('Invalid secret key')
          }

          const jwt = njwt.create(jwtBody, JWT_SECRET!)

          return {
            accessToken: jwt.compact(),
            refreshToken: crypto.randomBytes(64).toString('hex')
          }
        }
      }
    },
  };
});

