import 'package:gql_client/src/refresher_link.dart';
import 'package:gql_client/src/token_manager.dart';
import 'package:local_user/local_user.dart';
import 'package:http/http.dart' as http;
import 'package:graphql/client.dart';

GraphQLClient buildGqlClient({
  required bool authenticated,
  required LocalUser localUser,
  required Uri endpoint,
}) {
  final TokenManager tokenManager = TokenManager(localUser: localUser);

  final link = Link.from([
    if (authenticated)
      RefresherLink(
        tokenManager: tokenManager,
        refreshFailKey: 'blah blah',
      ),
    Link.split(
      (request) => request.isSubscription,
      WebSocketLink(endpoint.toString()),
    ),
    HttpLink(endpoint.toString(), httpClient: http.Client()),
  ]);

  return GraphQLClient(link: link, cache: GraphQLCache(store: InMemoryStore()));
}
