import 'package:flutter/material.dart';
import 'package:slicing/pages/page1.dart'; // Pastikan path ini benar
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
      home: SplashScreen(),
    );
  }
}



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    pindahKeHalamanLain(); 
  }

  
  pindahKeHalamanLain() {
    
    Timer(Duration(seconds: 3), () {
     
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Page01()), 
      );
    });
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            FlutterLogo(size: 100), 

            
            SizedBox(height: 20), 

           
            CircularProgressIndicator(), 
          ],
        ),
      ),
    );
  }
}

