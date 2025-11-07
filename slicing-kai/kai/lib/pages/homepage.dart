import 'package:flutter/material.dart';
import 'package:kai/components/card.dart';
import 'package:kai/components/menu.dart';
import 'package:kai/components/promo-card.dart';
import 'package:kai/components/promo-text.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';
// import 'package:lucide_icons_flutter/test_icons.dart';
import 'package:kai/components/top.dart';
import 'package:kai/components/train.dart';
import 'package:kai/components/trip.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("assets/gugugaga.jpg"),
                      fit: BoxFit.cover,
                      opacity: 0.5,
                    ),
                  ),
                  child: Menuatas(),
                ),
                Kartukai(),
              ],
            ),
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                      color: Colors.red,
                    ),
                    SizedBox(width: 15),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                      color: Colors.blue,
                    ),
                    SizedBox(width: 15),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                      color: Colors.green,
                    ),
                    SizedBox(width: 15),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                      color: Colors.orange,
                    ),
                    SizedBox(width: 15),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                      color: Colors.purple,
                    ),
                    SizedBox(width: 15),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                      color: Colors.brown,
                    ),
                    SizedBox(width: 15),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Trainmn(
                  icon: Icon(Icons.hotel, size: 35, color: Colors.white),
                  text: "hotel",
                ),
                Trainmn(
                  icon: Icon(
                    Icons.card_giftcard,
                    size: 35,
                    color: Colors.white,
                  ),
                  text: "gift",
                ),
                Trainmn(
                  icon: Icon(Icons.date_range, size: 35, color: Colors.white),
                  text: "event",
                ),
                Trainmn(
                  icon: Icon(Icons.slideshow, size: 35, color: Colors.white),
                  text: "promo",
                ),
              ],
            ),
            SizedBox(height: 20),
            Trip(),
            SizedBox(height: 30),
            PromoText(),
            SizedBox(height: 20),
          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PromoCard(image: "assets/banner-1.png"),
                    // 2. Beri jarak antar kartu
                    SizedBox(width: 16),
                    PromoCard(image: "assets/banner-2.png"),
                    // 2. Beri jarak antar kartu
                    SizedBox(width: 16),
                    PromoCard(image: "assets/banner-3.png"),
                  ],
                ),
              ),
            ),
           
            SizedBox(height: 20),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.train_outlined),
            activeIcon: Icon(Icons.train),
            label: "Train",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number_outlined),
            activeIcon: Icon(Icons.confirmation_number),
            label: "Ticket",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount_outlined),
            activeIcon: Icon(Icons.discount),
            label: "Discount",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: "Account",
          ),
        ],
      ),
    );
  }
}