import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';
import 'package:kai/components/cardmn.dart';

class Kartukai extends StatelessWidget {
  const Kartukai({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      right: 20,
      bottom: -60,
      child: Container(
        // height: 100,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(0, 1)),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Image.asset("assets/KAUPAYS.png"),
                      ),
                      Row(
                        children: [
                          Text(
                            "Rp. 500.000",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(LucideIcons.chevronRight),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60, child: VerticalDivider()),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Kartukaimn(
                        icon: Icon(
                          LucideIcons.scan,
                          color: Colors.blueAccent,
                          size: 35,
                        ),
                        text: "scan",
                      ),
                      Kartukaimn(
                        icon: Icon(
                          LucideIcons.wallet,
                          color: Colors.blueAccent,
                          size: 35,
                        ),
                        text: "top up",
                      ),
                      Kartukaimn(
                        icon: Icon(
                          LucideIcons.history,
                          color: Colors.blueAccent,
                          size: 35,
                        ),
                        text: "riwayat",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1, height: 20, color: Colors.grey),
            Row(
              children: [
                Row(
                  spacing: 5,
                  children: [
                    Icon(Icons.monetization_on, color: Colors.amber),
                    Text("0 Railpoints"),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star_border_outlined),
                      Text("basic"),
                      Icon(LucideIcons.chevronRight),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // child: Container(
      //   margin: EdgeInsets.all(10),
      //   padding: EdgeInsets.all(16),
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     borderRadius: BorderRadius.circular(16),
      //     boxShadow: [
      //       BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(0, 1)),
      //     ],
      //   ),

      //   child: Column(
      //     children: [
      //       Row(
      //         // crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Expanded(
      //             flex: 2,
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Image.asset("assets/KAUPAYS.png", width: 130),
      //                 SizedBox(height: 6),
      //                 Row(
      //                   children: [
      //                     Text(
      //                       "Rp 0",
      //                       style: TextStyle(
      //                         fontSize: 18,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                     Icon(Icons.chevron_right, size: 20),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //           SizedBox(height: 60, child: VerticalDivider()),
      //           Expanded(
      //             flex: 3,
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: [
      //                 // Icon(LucideIcons.scanLine, color: Colors.blue, size: 30),
      //                 // Icon(LucideIcons.wallet, color: Colors.blue, size: 30),
      //                 // Icon(LucideIcons.clock4, color: Colors.blue, size: 30),
      //                 Kartukaimn(
      //                   icon: Icon(
      //                     LucideIcons.scanLine,
      //                     color: Colors.blue,
      //                     size: 30,
      //                   ),
      //                   text: "scan",
      //                 ),
      //                 Kartukaimn(
      //                   icon: Icon(
      //                     LucideIcons.wallet,
      //                     color: Colors.blue,
      //                     size: 30,
      //                   ),
      //                   text: "topup",
      //                 ),
      //                 Kartukaimn(
      //                   icon: Icon(
      //                     LucideIcons.clock4,
      //                     color: Colors.blue,
      //                     size: 30,
      //                   ),
      //                   text: "riwayat",
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //       SizedBox(height: 12),
      //       Divider(thickness: 0.5, height: 20),
      //       Row(
      //         children: [
      //           Icon(Icons.monetization_on, color: Colors.orange, size: 20),
      //           SizedBox(width: 4),
      //           Text(
      //             "0 Railpoin",
      //             style: TextStyle(fontWeight: FontWeight.w500),
      //           ),
      //           Spacer(),
      //           Container(
      //             padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      //             decoration: BoxDecoration(
      //               color: Colors.blue.shade50,
      //               borderRadius: BorderRadius.circular(20),
      //             ),
      //             child: Row(
      //               children: [
      //                 Icon(Icons.star, color: Colors.blue, size: 16),
      //                 SizedBox(width: 4),
      //                 Text(
      //                   "Basic",
      //                   style: TextStyle(
      //                     color: Colors.blue,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //                 Icon(Icons.chevron_right, color: Colors.blue, size: 16),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}