// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffeeui/util/coffe_tile.dart';
import 'package:coffeeui/util/coffe_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of coffee
  final List coffeetype = [
    [
      'Capucino',
      false,
    ],
    [
      'papucino',
      false,
    ],
    [
      'sapucino',
      false,
    ],
  ];

  //user tapped
  void coffeeTypeSelected(int tap) {
    setState(() {
      for (int i = 0; i < coffeetype.length;i++){
        coffeetype[i][1] = false;
      } coffeetype[tap][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: '',
        ),
      ]),
      body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "find the best coffee",
                style: GoogleFonts.salsa(
                    fontSize: 56, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find Your Coffee....',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffeetype.length,
                    itemBuilder: (context, index) {
                      return CoffeeType(
                          coffeetype: coffeetype[index][0],
                          isselected: coffeetype[index][1],
                          onTap: () {
                            coffeeTypeSelected(index);
                          });
                    })),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                  coffeename: 'Capucino',
                  coffeeprice: '4.56',
                  Coffeeimgpath: 'assets/img/1.jpg',
                ),
                CoffeeTile(
                  coffeename: 'Papucino',
                  coffeeprice: '4.06',
                  Coffeeimgpath: 'assets/img/2.jpg',
                ),
                CoffeeTile(
                  coffeename: 'Sapucino',
                  coffeeprice: '3.58',
                  Coffeeimgpath: 'assets/img/3.jpg',
                ),
              ],
            ))
          ]),
    );
  }
}
