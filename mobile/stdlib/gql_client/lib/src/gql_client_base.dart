import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:gql_client/src/refresher_link.dart';
import 'package:gql_client/src/token_manager.dart';
import 'package:local_user/local_user.dart';
import 'package:http/http.dart' as http;
import 'package:graphql/client.dart';

class GQLClient extends GraphQLClient implements ShadowChangeHandlers {
  late ValueNotifier<GraphQLClient> shadowListenableClient =
      ValueNotifier(this);

  GQLClient({required Link link, required GraphQLCache cache})
      : super(link: link, cache: cache);

  @override
  void onGetShadowed(covariant GQLClient newClient) {
    shadowListenableClient.value = newClient;
  }

  @override
  void onLeaveShadow(covariant GQLClient oldClient) {
    shadowListenableClient.value = this;
  }
}

GQLClient buildGqlClient({
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

  return GQLClient(link: link, cache: GraphQLCache(store: InMemoryStore()));
}
