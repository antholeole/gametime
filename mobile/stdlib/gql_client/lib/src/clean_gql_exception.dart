import 'package:graphql/client.dart';

Exception cleanGqlException(OperationException operationException) {
  if (operationException.graphqlErrors.isNotEmpty) {
    return Exception(operationException.graphqlErrors.first.message);
  }

  if (operationException.linkException != null) {
    return Exception(operationException.linkException!.originalException);
  }

  return Exception('Unknown GQL exception.');
}
