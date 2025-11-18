import 'package:flutter/material.dart';
import 'banner_image.dart'; 

class Banner1 extends StatelessWidget {
  const Banner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Promo Spesial Buatmu",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16.0, right: 6.0),
              children: [
                // --- UBAH BAGIAN INI ---
                BannerImage(imagePath: 'assets/banner-7.png'),
                BannerImage(imagePath: 'assets/banner-8.png'),
                BannerImage(imagePath: 'assets/banner-9.png'),
                // --- AKHIR PERUBAHAN ---
              ],
            ),
          ),
        ],
      ),
    );
  }

 
}