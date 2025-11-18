import 'package:flutter/material.dart';
import 'package:belajar/components-3/profile_header.dart';
import 'package:belajar/components-3/profile_menu_item.dart';

class Profil1 extends StatelessWidget {
  const Profil1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0),
                child: Text(
                  "My Profil",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

             
              const ProfileHeader(),

              
              Divider(color: Colors.grey[200], thickness: 8),

              
              const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 10.0),
                child: Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),

              
              ProfileMenuItem(
                icon: Icons.receipt_long_outlined,
                title: "My Orders",
                onTap: () {
                  print("My Orders di-tap!");
                },
              ),
              ProfileMenuItem(
                icon: Icons.subscriptions_outlined,
                title: "My Subscription",
                onTap: () {
                  print("My Subscription di-tap!");
                },
              ),
              ProfileMenuItem(
                icon: Icons.discount_outlined,
                title: "Promo",
                onTap: () {
                  print("Promo di-tap!");
                 
                },
              ),
              ProfileMenuItem(
                icon: Icons.payment_outlined,
                title: "Payment",
                onTap: () {
                  print("Payment di-tap!");
                },
              ),
              ProfileMenuItem(
                icon: Icons.help_outline,
                title: "Help",
                onTap: () {
                  print("Help di-tap!");
                },
              ),
              ProfileMenuItem(
                icon: Icons.language_outlined,
                title: "Language",
                onTap: () {
                  print("Language di-tap!");
                },
              ),
              
            
              const SizedBox(height: 10),
              Divider(color: Colors.grey[200], indent: 16, endIndent: 16),

              ProfileMenuItem(
                icon: Icons.logout_outlined,
                title: "Log Out",
                onTap: () {
                  print("Log Out di-tap!");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}