import 'package:flutter/material.dart';

// Impor semua komponen V2
import 'package:belajar/components-2/promo_voucher_section.dart'; 
import 'package:belajar/components-2/promo_chekin_banner.dart';
import 'package:belajar/components-2/promo_filters.dart';
import 'package:belajar/components-2/promo_card_small.dart';
import 'package:belajar/components-2/promo_banner_large.dart';
import 'package:belajar/components-2/promo_card_medium.dart';
import 'package:belajar/components-2/promo_vertical.dart';



class Promo1 extends StatelessWidget {
  const Promo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], 
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const PromoVoucherSection(),

            
            const PromoCheckinBanner(),

            
            const PromoFilters(),

          
            Divider(color: Colors.grey[300], thickness: 8),

          
            _buildSectionTitle("Promo hari ini"),
            _buildPromoHariIniList(),

            
            _buildSectionTitle("Promo Makanan"),
            const PromoBannerLarge(
              imagePath: "assets/promo-makanan.png", 
            ),

          
            _buildSectionTitle("Promo Liburan"),
            _buildPromoLiburanList(),

          
            _buildSectionTitle("Promo Transportasi"),
            _buildPromoTransportasiList(),

           
            _buildSectionTitle("Spesial Buatmu"),
            _buildVerticalBanners(),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }


  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 10.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  
  Widget _buildPromoHariIniList() {
    return SizedBox(
      height: 100, 
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 16.0, right: 6.0),
        children: [
          PromoCardSmall(
            title: "Diskon ongkir Sampai 50%",
            subtitle: "khusus grab & shoope",
            backgroundColor: Colors.brown.shade100, 
          ),
          PromoCardSmall(
            title: "Buy 1 get 1",
            subtitle: "khusus cemilan tertentu",
            backgroundColor: Colors.brown.shade200, 
          ),
          PromoCardSmall(
            title: "Bonus Saldo",
            subtitle: "Top up min 100rb",
            backgroundColor: Colors.brown.shade50, 
          ),
        ],
      ),
    );
  }

  // Helper untuk List "Promo Liburan"
  Widget _buildPromoLiburanList() {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 16.0, right: 6.0),
        children: [
          PromoCardMedium(
            title: "Jogjakarta",
            subtitle: "Liburan dapat diskon",
            imagePath: "assets/banner-5.png", 
            gradientColors: [Colors.black.withOpacity(0.8), Colors.transparent],
          ),
          PromoCardMedium(
            title: "Candi Borobudur",
            subtitle: "Liburan dapat diskon",
            imagePath: "assets/banner-4.png", 
            gradientColors: [Colors.brown.withOpacity(0.8), Colors.transparent], 
          ),
           PromoCardMedium(
            title: "Pantai Ancol",
            subtitle: "Liburan dapat diskon",
            imagePath: "assets/banner-6.png", 
            gradientColors: [Colors.brown.withOpacity(0.8), Colors.transparent], 
          ),
        ],
      ),
    );
  }

  // Helper untuk List "Promo Transportasi"
  Widget _buildPromoTransportasiList() {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 16.0, right: 6.0),
        children: [
          PromoCardMedium(
            title: "Rp 250.000 +",
            subtitle: "Harga Spesial",
            imagePath: "assets/banner-3.png", 
            gradientColors: [Colors.brown.shade700.withOpacity(0.8), Colors.transparent], 
          ),
          PromoCardMedium(
            title: "Rp 500.000 +",
            subtitle: "Harga Spesial",
            imagePath: "assets/banner-2.png", 
            gradientColors: [Colors.brown.shade400.withOpacity(0.8), Colors.transparent],
          ),
        ],
      ),
    );
  }

  // Helper untuk 3 Banner Vertikal di bawah (Hanya Gambar)
  Widget _buildVerticalBanners() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          PromoVerticalCard(
            imagePath: "assets/banner-10.png", 
          ),
          PromoVerticalCard(
            imagePath: "assets/banner-11.png", 
          ),
          PromoVerticalCard(
            imagePath: "assets/banner-12.png", 
          ),
        ],
      ),
    );
  }
}