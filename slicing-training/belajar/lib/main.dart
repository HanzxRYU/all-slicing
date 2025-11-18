import 'package:belajar/pages/pesan.dart';
import 'package:belajar/pages/profil.dart';
import 'package:flutter/material.dart';

import 'package:belajar/components/homepage.dart';
import 'package:belajar/pages/promo.dart'; 
import 'package:belajar/pages/profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
     
      home: const NavigasiBawah(),
    );
  }
}

class NavigasiBawah extends StatefulWidget {
  const NavigasiBawah({super.key});

  @override
  State<NavigasiBawah> createState() => _NavigasiBawahState();
}

class _NavigasiBawahState extends State<NavigasiBawah> {
 
  int _selectedIndex = 0;

 
  final List<Widget> _pages = [
    const Homepage(),      
    const Promo1(),        
    const Pesan1(), 
    const Profil1(),      
  ];

  // 3. Fungsi untuk mengubah index saat tombol ditekan
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, 
        backgroundColor: Colors.white,
        elevation: 10,
        
        
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

        
        selectedItemColor: Colors.brown, 
        unselectedItemColor: Colors.grey, 
        showSelectedLabels: true,
        showUnselectedLabels: true,

       
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount_outlined),
            activeIcon: Icon(Icons.discount),
            label: 'Discount',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            activeIcon: Icon(Icons.chat_bubble),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profil', 
          ),
        ],
      ),
    );
  }
}