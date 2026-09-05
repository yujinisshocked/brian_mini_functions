// A blueprint of widgets
import 'package:flutter/material.dart';

class FunctionWidgets extends StatelessWidget {
  final IconData icon;
  final String text;
  final String routeName;

  const new({
    super.key,
    required this.icon,
    required this.text,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.cyan,
          border: Border.all(color: Colors.cyanAccent, width: 2)
        ),
        child: Column(
          children: [

            Icon(icon),

            Text(text),

          ],
        ),
      ),
    );
  }
}