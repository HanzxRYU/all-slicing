import 'package:flutter/material.dart';

class PromoText extends StatelessWidget {
  const PromoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          const Text(
            "Promo Terbaru",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87, // Warna teks
            ),
          ),

          OutlinedButton(
            onPressed: () {},

            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.red,

              side: const BorderSide(color: Colors.red),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),

            child: const Text("Lihat Semuanya"),
          ),
        ],
      ),
    );
  }
}
