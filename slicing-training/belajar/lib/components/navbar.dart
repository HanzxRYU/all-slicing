import 'package:flutter/material.dart';
import 'navbar_icon_button.dart'; 

class NavBar1 extends StatelessWidget {
  const NavBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.train, color: Colors.white),
              ),

             
              Row(
                children: [
                
                  NavbarIconButton(
                    icon: Icons.shopping_cart_outlined,
                    iconColor: Colors.white,
                    onTap: () {
                      print("Tombol Keranjang di-tap!");
                    },
                  ),
                  
                  NavbarIconButton(
                    icon: Icons.notifications,
                    iconColor: Colors.white,
                    onTap: () {
                      print("Tombol Lonceng di-tap!");
                    },
                  ),
                 
                  NavbarIconButton(
                    icon: Icons.settings_outlined,
                    iconColor: Colors.white,
                    onTap: () {
                      print("Tombol Pengaturan di-tap!");
                    },
                  ),
                ],
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}