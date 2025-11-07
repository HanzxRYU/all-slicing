import 'package:flutter/material.dart';
import 'package:kai/components/butttonmn.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';

class Menuatas extends StatelessWidget {
  const Menuatas({super.key});

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: EdgeInsets.all(10),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [Text("Selamat Pagi"), Text("Fulan Bin Fulan")],
    //       ),
    //       Row(
    //         spacing: 10,
    //         children: [
    //           Container(
    //             decoration: BoxDecoration(
    //               shape: BoxShape.circle,
    //               color: Colors.white.withOpacity(0.4),
    //             ),
    //             child: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
    //           ),
    //           Container(
    //             decoration: BoxDecoration(
    //               shape: BoxShape.circle,
    //               color: Colors.white.withOpacity(0.4),
    //             ),
    //             child: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
    //           ),
    //           Container(
    //             decoration: BoxDecoration(
    //               shape: BoxShape.circle,
    //               color: Colors.white.withOpacity(0.4),
    //             ),
    //             child: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat Pagi",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                "Fulan Bin Fulan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(spacing: 10, children: [Buttonmn(), Buttonmn(), Buttonmn()]),
        ],
      ),
    );
  }
}