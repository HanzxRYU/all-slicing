import 'package:flutter/material.dart';

class NavbarIconButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final VoidCallback onTap;

  const NavbarIconButton({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
  
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        color: iconColor,
        size: 20,
      ),
    
      style: IconButton.styleFrom(
        backgroundColor: Colors.brown.shade400,
        shape: const CircleBorder(),
       
        padding: const EdgeInsets.all(12.0),
      ),
    );
  }
}