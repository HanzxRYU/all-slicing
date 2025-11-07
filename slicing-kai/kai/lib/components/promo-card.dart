import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  final String image;
  const PromoCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
    );
  }
}
