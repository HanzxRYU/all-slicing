import 'package:flutter/material.dart';
import 'package:slicing_2/coba1.dart';// Pastikan path ini benar
import 'dart:async'; // Import ini untuk Timer

void main() {
  runApp(MyApp()); // Dihilangkan 'const'
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
       
      ),
      home: Slicingui2()
    );
  }
}
