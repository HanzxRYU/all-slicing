import 'package:flutter/material.dart';

class Trainmn extends StatelessWidget {
  final Widget icon;
  final String text;
  const Trainmn({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue.withOpacity(0.4),
          ),
          child: IconButton(onPressed: () {}, icon: icon),
        ),

        SizedBox(height: 8),

        Text(
          text,
          style: TextStyle(fontSize: 15),
          selectionColor: Colors.black,

          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
