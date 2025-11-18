import 'package:flutter/material.dart';
import 'menu_icon.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            
              MenuIcon(
                icon: Icons.send_outlined,
                label: "Transfer",
                onTap: () {
                  print("Transfer di-tap!");
                },
              ),
              MenuIcon(
                icon: Icons.account_balance_wallet_outlined,
                label: "Top up",
                onTap: () {
                  print("Top up di-tap!");
                },
              ),
              MenuIcon(
                icon: Icons.atm_outlined,
                label: "Tarik tunai",
                onTap: () {
                  print("Tarik tunai di-tap!");
                },
              ),
              MenuIcon(
                icon: Icons.currency_exchange_outlined,
                label: "Konversi",
                onTap: () {
                  print("Konversi di-tap!");
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MenuIcon(
                icon: Icons.wifi,
                label: "Kuota",
                onTap: () {
                  print("Kuota di-tap!");
                },
              ),
              MenuIcon(
                icon: Icons.public_outlined,
                label: "Pulsa",
                onTap: () {
                  print("Pulsa di-tap!");
                },
              ),
              MenuIcon(
                icon: Icons.shopping_cart_outlined,
                label: "Ecommerce",
                onTap: () {
                  print("Ecommerce di-tap!");
                },
              ),
              MenuIcon(
                icon: Icons.savings_outlined,
                label: "Nabung",
                onTap: () {
                  print("Nabung di-tap!");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}