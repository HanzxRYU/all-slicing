import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const MenuIcon({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        IconButton(
          onPressed: onTap, 
          icon: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        
          style: IconButton.styleFrom(
            backgroundColor: Colors.brown.shade400,
            shape: const CircleBorder(), 
            padding: const EdgeInsets.all(16), 
          ),
        ),
       
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}