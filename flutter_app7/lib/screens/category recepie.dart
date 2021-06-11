 import 'package:flutter/material.dart';
import 'package:flutter_app7/Widgets/Category.dart';
import 'package:flutter_app7/screens/CategoryScreen.dart';

 class CatogoriesRecepie extends StatelessWidget {

   final String name;
   final List<Widget> allrecepie;
   CatogoriesRecepie({required this.name,required this.allrecepie});

   @override
   Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text(name),
      ),
      body: allrecepie.length == 0 ? Center(child: Text('No recepies added yet!'),): ListView(
          children: allrecepie,
        ),
     );
  }
 }
