import 'package:flutter/material.dart';

class Slicingui2 extends StatelessWidget {
  const Slicingui2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          // paling atas kanan
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: 140, height: 18, color: Colors.red),
                      SizedBox(height: 10),
                      Container(width: 180, height: 26, color: Colors.red),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(radius: 20, backgroundColor: Colors.grey),
                      SizedBox(width: 8),
                      CircleAvatar(radius: 20, backgroundColor: Colors.grey),
                      SizedBox(width: 8),
                      Container(
                        width: 80,
                        height: 26,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),
              // bagian kiri atas
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          width: 180,
                          height: 30,
                          color: Colors.white,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          width: 180,
                          height: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    // ini yang kotak putih
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 20.0),
                      child: Row(
                        children: [
                          Container(width: 50, height: 50, color: Colors.white),
                          SizedBox(width: 8),
                          Container(width: 50, height: 50, color: Colors.white),
                          SizedBox(width: 8),
                          Container(width: 50, height: 50, color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // ini yang scroll horizontal
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.red,
                      margin: EdgeInsets.only(top: 20),

                      child: Center(
                        child: Text(
                          'Menu 1',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.red,
                      margin: EdgeInsets.only(top: 20),

                      child: Center(
                        child: Text(
                          'Menu 2',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.red,
                      margin: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'Menu 3',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.red,
                      margin: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'Menu 4',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.red,
                      margin: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'Menu 5',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.red,
                      margin: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'Menu 6',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.red,
                      margin: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'Menu 7',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.red,
                      margin: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'Menu 8',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.red,
                      margin: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'Menu 9',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              // kotak menu lagi
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Icon 1',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Icon 2',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Icon 3',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Icon 4',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Icon 5',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Icon 6',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Icon 7',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 140, height: 30, color: Colors.grey),
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: 220,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 220,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(radius: 22, backgroundColor: Colors.grey.shade300),
              CircleAvatar(radius: 22, backgroundColor: Colors.grey.shade300),
              CircleAvatar(radius: 22, backgroundColor: Colors.grey.shade300),
              CircleAvatar(radius: 22, backgroundColor: Colors.grey.shade300),
              CircleAvatar(radius: 22, backgroundColor: Colors.grey.shade300),
            ],
          ),
        ),
      ),
    );
  }
}
