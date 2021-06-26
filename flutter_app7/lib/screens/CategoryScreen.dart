import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app7/data/CategoryList.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(50),
              height: 70,
              width: 70,
              child: Icon(Icons.account_circle_rounded,size: 70,color: Colors.white,),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.pink
              ),
            ),
            buildDrawerBox('Profile', Icons.account_circle),
            SizedBox(height: 15,),
            buildDrawerBox('Favourites', Icons.favorite),
            SizedBox(height: 15,),
            buildDrawerBox('Categories', Icons.category),
            SizedBox(height: 15,),
            buildDrawerBox('Add Recepie', Icons.add),
            SizedBox(height: 15,),
            buildDrawerBox('Logout', Icons.logout),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Text('Categories'),
      ),
      body: GridView.builder(
        itemCount: Categories_list.length,
        itemBuilder: (context, index) {
          return Categories_list[index];
        },
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
  Widget buildDrawerBox(String title,IconData icon){
    return Container(
      height: 50,
      width: 280,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.pink),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon,size: 30,color: Colors.black,),
          ),
          Text(title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)
        ],
      ),
    );
  }
}
