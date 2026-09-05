// This page is used to register the functions that has been done.
import 'package:brian_mini_functions/functions/widgets/function_widgets.dart';
import 'package:brian_mini_functions/pages/home.dart';
import 'package:flutter/material.dart';

class AppFunctions {
  final Widget function;
  final String functionName;
  final String routeName;
  final IconData icon;

  AppFunctions({
    required this.function, 
    required this.functionName,
    required this.routeName,
    required this.icon,
  });

  WidgetBuilder route() {
    return (( context ) => function);
  }
}

class FunctionsHelpers {

  static List<AppFunctions> functions = [
    // Declare the functions here:
    AppFunctions(function: Home(), functionName: "Home Page", routeName: "/homepage", icon: Icons.home),
  ];

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      for (var function in functions) function.routeName: function.route()
    };
  }

  static List<Widget> getWidgets() {
    // Return the widgets built from the functions
    return functions.map((function) => FunctionWidgets(icon: function.icon, text: function.functionName, routeName: function.routeName)).toList()..removeAt(0);
  }
}