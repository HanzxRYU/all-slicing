import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  final String imagePath;

  const BannerImage({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
   
    return GestureDetector(
      onTap: () {
        print("Banner $imagePath di-tap!");
      },
      child: Container(
        width: 300,
        margin: const EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}