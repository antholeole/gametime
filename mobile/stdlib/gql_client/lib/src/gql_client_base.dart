import 'package:gql_client/src/refresher_link.dart';
import 'package:gql_client/src/token_manager.dart';
import 'package:local_user/local_user.dart';
import 'package:http/http.dart' as http;
import 'package:graphql/client.dart';

Future<GraphQLClient> build(
    {required LocalUser localUser,
    required String refreshFailKey,
    required RequestRefresh refreshRequest,
    required Uri endpoint}) async {
  final TokenManager tokenManager =
      TokenManager(localUser: localUser, requestRefresh: refreshRequest);

  final link = Link.from([
    RefresherLink(
      tokenManager: tokenManager,
      refreshFailKey: refreshFailKey,
    ),
    Link.split(
      (request) => request.isSubscription,
      WebSocketLink(endpoint.toString()),
    ),
    HttpLink(endpoint.toString(), httpClient: http.Client()),
  ]);

  return GraphQLClient(link: link, cache: GraphQLCache(store: InMemoryStore()));
}
