import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:movie_suggestion/core/graphql_conf.dart';
import 'package:movie_suggestion/screens/login_screen.dart';

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

void main() => runApp(GraphQLProvider(
    client: graphQLConfiguration.client, child: CacheProvider(child: MyApp())));

class MyApp extends StatelessWidget {
  // Этот виджет является корнем моего приложения.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch Next',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
