import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class MainGraphQL {
  static HttpLink httpLink =
      HttpLink(uri: 'http://infra.connectmix.com.br:3001/dashboard-app');
  static AuthLink authLink = AuthLink(getToken: () => 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYzLCJpYXQiOjE1NzQ0NTQxOTd9.-Xod4UCz0VB8PNroOURgcO1WM-EO4X6BlLBxgunGN-A');

  static Link link = authLink.concat(httpLink);

  static ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      cache: InMemoryCache(),
    ),
  );

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      link: link,
      cache: InMemoryCache(),
    );
  }
}
