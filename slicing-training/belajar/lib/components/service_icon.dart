import 'package:flutter/material.dart';

class ServiceIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const ServiceIcon({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      
        Container(
          decoration: BoxDecoration(
        
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
       
          child: IconButton(
            onPressed: () {
              print("$label di-tap!");
            },
            icon: Icon(
              icon,
              color: color,
              size: 30,
            ),
          
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            
              padding: const EdgeInsets.all(12),
            ),
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