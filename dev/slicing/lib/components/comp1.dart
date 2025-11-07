// comp1.dart
import 'package:flutter/material.dart';

class KomponenUi1 extends StatelessWidget {
  final String logo;
  final String text;
  const KomponenUi1({super.key, required this.logo, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
       
        border: Border.all(color: Colors.red, width: 2.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       
        children: [
          SizedBox(height: 40, child: Image.asset(logo)),
          
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}