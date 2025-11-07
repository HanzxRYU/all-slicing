import 'package:flutter/material.dart';

class Mnkereta extends StatelessWidget {
  final String text;
  final Widget icon;
  final Color color;
  const Mnkereta({super.key, required this.icon, required this.text, required this.color} );
  

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: icon,
        ),
        Text(text, style: TextStyle(fontSize: 15)),
      ],
    );
  }
}