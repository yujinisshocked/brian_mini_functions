import 'package:brian_mini_functions/functions/helpers/functions_helpers.dart';
import 'package:brian_mini_functions/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = FunctionsHelpers.getRoutes();
    return MaterialApp(
      routes: routes,
      home: Home(),
    );
  }
}