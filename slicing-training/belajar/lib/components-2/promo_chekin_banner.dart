import 'package:flutter/material.dart';

class PromoCheckinBanner extends StatelessWidget {
  const PromoCheckinBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
         
          gradient: LinearGradient(
            colors: [Colors.brown.shade400, Colors.brown.shade700], 
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            const Icon(Icons.calendar_today, color: Colors.white, size: 30),
            const SizedBox(width: 12),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Check-in Setiap Hari Koinnya",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Tukar dan Dapatkan Koinmu",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Klaim Check-in di-tap!");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              
                foregroundColor: Colors.brown, // Dari Hijau
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text("Klaim"),
            ),
          ],
        ),
      ),
    );
  }
}