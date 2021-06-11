import 'package:flutter/material.dart';
import 'package:flutter_app7/screens/CategoryScreen.dart';
import 'package:flutter_app7/screens/Favourite%20screen.dart';


class Tabscreen extends StatefulWidget{

  @override
  _TabscreenState createState() => _TabscreenState();
}

class _TabscreenState extends State<Tabscreen> {
  List<Widget>screens=[
    CategoryScreen(),
    FavouriteScreen(),
  ];

  int pageIndex=0;

  void changeIndex(int index) {
    pageIndex = index;
    // print(pageIndex);


    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.yellow[100],

      body: screens[pageIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: changeIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category_outlined),label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Favourite'),
        ],
      ),
    );
  }
}