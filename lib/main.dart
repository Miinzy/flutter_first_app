import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'tab_bar_widget.dart';
import 'core/graphQL_config.dart';

MainGraphQL graphQLConfiguration = MainGraphQL();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
        client: MainGraphQL.client, child: MaterialApp(home: BottomTabBar()));
  }
}
