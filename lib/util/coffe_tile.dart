// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String Coffeeimgpath;
  final String coffeename;
  final String coffeeprice;

  CoffeeTile({
    required this.Coffeeimgpath,
    required this.coffeename,
    required this.coffeeprice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
        child: Container(
          width: 200,
          //color: Colors.grey,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black54,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //coffee image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(Coffeeimgpath,height:150,fit: BoxFit.cover,),
              ),

              //coffee name
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        coffeename,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'with almond milk',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text('\$'+ coffeeprice),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
