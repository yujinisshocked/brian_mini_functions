import 'package:brian_mini_functions/functions/helpers/functions_helpers.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    // Declared Variables
    List<Widget> widgets = FunctionsHelpers.getWidgets();

    // UI
    return Scaffold(
      body: widgets.isNotEmpty ? ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (context, index) {
          return widgets[index];
        },
      ) : Center(child:Text("No function found")),
    );
  }
}