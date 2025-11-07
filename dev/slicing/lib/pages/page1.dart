// page1.dart
import 'package:flutter/material.dart';
import 'package:slicing/components/comp1.dart';
import 'package:slicing/components/saldo.dart';
import 'package:slicing/components/banner.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                 
                  colors: [Colors.red.shade300, Colors.white],
                ),
              ),
              child: Column(
                children: [
                  
                  SizedBox(height: 50),
                  
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Mau makan Apa hari ini',
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              // 6. Ubah warna fill dan hilangkan border
                              fillColor: Color.fromARGB(255, 230, 229, 229),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                       
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.pink.shade50,
                          child: Icon(Icons.person,
                              color: Colors.red, size: 30),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Menu favorit Anda",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: Image.asset('assets/FastFood.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      KomponenUi1(
                          logo: 'assets/burger.png', text: 'Promo trus'),
                      KomponenUi1(
                          logo: 'assets/store.png', text: 'Restoran'),
                      KomponenUi1(
                          logo: 'assets/orange-juice.png', text: 'Minuman'),
                      KomponenUi1(
                          logo: 'assets/vegetables.png',
                          text: 'Buah & Sayur'),
                    ],
                  ),
                  
                  SizedBox(height: 50),
                ],
              ),
            ),

           
            Transform.translate(
              offset: Offset(0, -35),
              child: Saldoapp1(),
            ),

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: List.generate(8, (index) {
                 
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.pink.shade50,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  );
                }),
              ),
            ),

           
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              
              child: Text(
                "Cek promo hari ini !",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            
            PromoBanner(imagePath: 'assets/delivery.jpg')
          ],
        ),
      ),

     
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Bag',
          ),
        ],

        currentIndex: 0,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}