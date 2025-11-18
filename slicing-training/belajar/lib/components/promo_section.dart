import 'package:flutter/material.dart';
import 'promo.dart'; 

class PromoSection extends StatelessWidget {
  const PromoSection({super.key});

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
              "Promo Merchant",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
          
            height: 180, 
           
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16.0, right: 6.0),
              children: [
                PromoMerchantCard(
                  discount: "30% off",
                  imagePath: 'assets/image-17.png', 
                  onTap: () {
                    print("Alfamart di-tap!");
                  },
                ),
                PromoMerchantCard(
                  discount: "50% off",
                  imagePath: 'assets/image-21.png', 
                  onTap: () {
                    print("Indomaret di-tap!");
                  },
                ),
                PromoMerchantCard(
                  discount: "35% off",
                  imagePath: 'assets/image-22.png', 
                  onTap: () {
                    print("Alfamidi di-tap!");
                  },
                ),
                PromoMerchantCard(
                  discount: "35% off",
                  imagePath: 'assets/seven-eleven.png', 
                  onTap: () {
                    print("seven eleven-tap!");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}