import 'package:flutter/material.dart';
import 'navbar.dart';
import 'menu.dart';
import 'cardmn.dart';
import 'banner.dart';
import 'service_icon.dart';
import 'promo_section.dart';
import 'longpromo.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

    
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar1(),

          
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Wrap(
                      spacing: 16.0,
                      runSpacing: 16.0,
                      alignment: WrapAlignment.spaceAround,
                      children: const [
                        ServiceIcon(
                          icon: Icons.local_drink,
                          label: "Minuman",
                          color: Colors.brown,
                        ),
                        ServiceIcon(
                          icon: Icons.fastfood,
                          label: "Makanan",
                          color: Colors.brown,
                        ),
                        ServiceIcon(
                          icon: Icons.ramen_dining,
                          label: "Fast Food",
                          color: Colors.brown,
                        ),
                        ServiceIcon(
                          icon: Icons.shopping_basket,
                          label: "Buah/Sayur",
                          color: Colors.brown,
                        ),
                        ServiceIcon(
                          icon: Icons.storefront,
                          label: "Restoran",
                          color: Colors.brown,
                        ),
                      ],
                    ),
                    const Divider(
                      height: 35,
                      thickness: 1,
                      color: Colors.black12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/wallet.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "Rp. 500.000",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "0 coins",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),
            Menu(),
            const SizedBox(height: 10),
            CardMn(),
            const SizedBox(height: 10),
            Banner1(),
            const SizedBox(height: 10),
            PromoSection(),
            const SizedBox(height: 10),
            LongPromo(),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
