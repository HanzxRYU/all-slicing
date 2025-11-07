import 'package:flutter/material.dart';

class Trip extends StatelessWidget {
  const Trip({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: double.infinity,
        height: 100,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.orange.shade100,
          image: const DecorationImage(
            image: AssetImage("assets/blue.png"),
            fit: BoxFit.cover,
          ),
        ),

        padding: const EdgeInsets.all(15.0),

        // -------------------------
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Diskon Perjalanan!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Dapatkan potongan 50% untuk perjalanan Anda berikutnya.",
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: const Text("Buat"),
            ),
          ],
        ),
      ),
    );
  }
}
