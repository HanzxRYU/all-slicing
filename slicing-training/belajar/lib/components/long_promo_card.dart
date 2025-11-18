import 'package:flutter/material.dart';

class LongPromoCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
 
  const LongPromoCard({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0), 
          ),
          elevation: 5, // Bayangan
          shadowColor: Colors.grey.withOpacity(0.3),
        ),
        
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          
         
          child: Image.asset(
            imagePath,
            width: double.infinity, // Lebar penuh
            height: 160, // Tinggi kartu
            fit: BoxFit.cover,
          ),
          
        ),
      ),
    );
  }
}