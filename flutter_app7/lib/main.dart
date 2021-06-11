import 'package:flutter/material.dart';
import 'package:flutter_app7/Widgets/recepie.dart';
//import 'package:flutter_app6/Screens/CategoryScreen.dart';
import 'package:flutter_app7/screens/CategoryScreen.dart';
import 'package:flutter_app7/screens/Favourite%20screen.dart';
import 'package:flutter_app7/screens/tabscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> favourites =[];

  void addRecepies(Recepie recepie){
    setState(() {
      favourites.add(recepie);
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tabscreen(),

      routes: {
        '/favourite':(ctx)=>FavouriteScreen(),
      },

    );
  }
}