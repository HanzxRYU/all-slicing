import 'package:flutter/material.dart';
import 'deal_card.dart'; 

class CardMn extends StatelessWidget {
  const CardMn({super.key});

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
              "Super deal hari ini",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16.0, right: 6.0),
              children: [
                
                DealCard(
                  title: "Promo Hebat",
                  subtitle: "Diskon 50% di Resto",
                  
                  gradientColors: [
                    Colors.brown.shade300,
                    Colors.brown.shade600,
                  ],
                ),
                DealCard(
                  title: "Cashback Gede",
                  subtitle: "Dapat 20rb Koin",
                 
                  gradientColors: [
                    Colors.brown.shade400,
                    Colors.brown.shade800,
                  ],
                ),
                DealCard(
                  title: "Gratis Ongkir",
                  subtitle: "Tanpa minimum belanja",
                  // Menggunakan nuansa Cokelat lagi
                  gradientColors: [
                    Colors.brown.shade200,
                    Colors.brown.shade500,
                  ],
                ),
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}
