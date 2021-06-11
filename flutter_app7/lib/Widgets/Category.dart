import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app7/screens/categoriesRecepie.dart';
import 'package:flutter_app7/screens/category%20recepie.dart';

class Category extends StatelessWidget {
  final int id;
  final String name;
  final String imageURL;
  final List<Widget> allrecipies;

  Category({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.allrecipies,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => CatogoriesRecepie(name: name, allrecepie: allrecipies)));
      },
      child: Container(
        // padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          // color: Color.fromRGBO(250, 129, 181, 1),
          //gradient: LinearGradient(
          //  begin: Alignment.topLeft,
          //end: Alignment.bottomRight,
          // colors: [Colors.black45, Colors.white10]),
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.05),
              spreadRadius: 3,
              blurRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
        //child: Text(name),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 159,
              width: 170,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  imageURL,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
