import 'package:flutter/material.dart';

class PromoFilters extends StatelessWidget {
  const PromoFilters({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar filter
    final List<String> filters = [
      "11.11", "gajian", "riding", "food", "travel", "vacation", "hotel", "drinks"
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
     
      child: Wrap(
        spacing: 8.0, 
        runSpacing: 8.0, 
        children: filters.map((label) {
          return ActionChip(
            label: Text(label),
            onPressed: () {
              print("Filter $label di-tap!");
            },
            backgroundColor: Colors.white,
            side: BorderSide(color: Colors.grey.shade300),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          );
        }).toList(),
      ),
    );
  }
}