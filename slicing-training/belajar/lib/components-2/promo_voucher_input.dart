import 'package:flutter/material.dart';

class PromoVoucherInput extends StatelessWidget {
  const PromoVoucherInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: TextField(
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
    );
  }
}