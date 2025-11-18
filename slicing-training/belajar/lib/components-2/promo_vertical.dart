import 'package:flutter/material.dart';

class PromoVerticalCard extends StatelessWidget {
  final String imagePath;
  

  const PromoVerticalCard({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        
       
        child: Image.asset(
          imagePath,
          height: 160,
          width: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              height: 160,
              color: Colors.grey[300],
              child: const Icon(Icons.image_not_supported, color: Colors.grey),
            );
          },
        ),
       
      ),
    );
  }
}