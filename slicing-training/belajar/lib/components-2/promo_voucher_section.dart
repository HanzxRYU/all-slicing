import 'package:flutter/material.dart';

class PromoVoucherSection extends StatelessWidget {
  const PromoVoucherSection({super.key});

  @override
  Widget build(BuildContext context) {
   
    const Color primaryColor = Colors.brown;

    return Container(
     
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 20.0),
      child: Column(
        children: [
         
          Row(
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
                color: Colors.brown.shade400, 
              ),
            ],
          ),
          
          const SizedBox(height: 16), 

          
          TextField(
            decoration: InputDecoration(
              hintText: "Masukan kode voucher",
              prefixIcon: Icon(Icons.confirmation_number_outlined, color: Colors.grey[600]),
              suffixIcon: Icon(Icons.qr_code_scanner, color: Colors.grey[600]),
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide.none,
              ),
            ),
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