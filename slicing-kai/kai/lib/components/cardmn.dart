import 'package:flutter/material.dart';

class Kartukaimn extends StatelessWidget {
  final String text;
  final Widget icon;
  const Kartukaimn({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      ],
    );
  }
}