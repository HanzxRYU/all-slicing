import 'package:flutter/material.dart';
import 'long_promo_card.dart';

class LongPromo extends StatelessWidget {
  const LongPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      color: Colors.white,
      child: Column(
        children: [
          // --- KARTU 1 ---
          LongPromoCard(
            imagePath: 'assets/banner-10.png',
            onTap: () {
              print("Promo Saldo di-tap!");
            },
           
          ),

        
          LongPromoCard(
            imagePath: 'assets/banner-11.png',
            onTap: () {
              print("Promo Supermarket di-tap!");
            },
            
          ),

         
          LongPromoCard(
            imagePath: 'assets/banner-12.png',
            onTap: () {
              print("Promo Nabung di-tap!");
            },
            
          ),
        ],
      ),
    );
  }
}
