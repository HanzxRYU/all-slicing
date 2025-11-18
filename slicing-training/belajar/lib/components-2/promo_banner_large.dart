import 'package:flutter/material.dart';

class PromoBannerLarge extends StatelessWidget {
  final String imagePath;

  const PromoBannerLarge({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          
          gradient: LinearGradient(
            colors: [Colors.brown.shade100, Colors.brown.shade50], 
          ),
          
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            const Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Diskon ongkir Sampai 50%",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    "khusus grab & shoope",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset(
                imagePath,
                height: 80,
                errorBuilder: (context, error, stackTrace) {
                 
                  return const Icon(Icons.fastfood, size: 60, color: Colors.brown); 
                 
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}