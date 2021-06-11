import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app7/screens/ingridents.dart';

class Recepie extends StatelessWidget {

  final String imageurl;
  final String name;
  final String difficulty;
  final String money;

  Recepie({required this.name,required this.difficulty,required this.imageurl,required this.money});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Ingridents(imageurl:imageurl,name: name,)));
      },

      child: Card(
        elevation: 20,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.only(bottom: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      child: Image.network(
                        imageurl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                      bottom: 20,
                      child: buildText(name)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(padding: const EdgeInsets.only(left: 0)),
                  buildTextIcon('20 min', Icons.access_time),
                  buildTextIcon('Simple', Icons.cake_outlined),
                  buildTextIcon('Affordable', Icons.money_rounded),
                  // Row(
                  //   children: [
                  //     Icon(Icons.access_time),
                  //     Text(
                  //       '20 min',
                  //       style: TextStyle(
                  //           fontSize: 19,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.black),
                  //     ),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Icon(Icons.cake_outlined),
                  //     Text(
                  //       'Simple',
                  //       style: TextStyle(
                  //           fontSize: 19,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.black),
                  //     ),
                  //   ],
                  // ),
                  Row(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildText(String food) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: 170,
      color: Colors.black.withOpacity(0.5),
      child: Text(
        food,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  Widget buildTextIcon(String text, IconData icon) {
    return Row(
      children: [
        Icon(icon),
        Text(
          text,
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}
