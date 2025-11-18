import 'package:flutter/material.dart';

class PromoHeader extends StatelessWidget {
  const PromoHeader({super.key});

  @override
  Widget build(BuildContext context) {
   
    const Color primaryColor = Colors.deepPurple;

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildVoucherInfo(
            context,
            icon: Icons.confirmation_number,
            title: "15 Voucers",
            subtitle: "Milikmu",
            color: primaryColor,
          ),
          _buildVoucherInfo(
            context,
            icon: Icons.workspace_premium,
            title: "Voucers Plus",
            subtitle: "Langganan",
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }

  
  Widget _buildVoucherInfo(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Row(
      children: [
        Icon(icon, color: color, size: 30),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}