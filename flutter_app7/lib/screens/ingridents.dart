import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app7/Widgets/recepie.dart';

class Ingridents extends StatefulWidget {
  final String imageurl;
  final String name;

  Ingridents({required this.imageurl, required this.name});

  @override
  _IngridentsState createState() => _IngridentsState();
}

class _IngridentsState extends State<Ingridents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(widget.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Image.network(
                'https://www.indianhealthyrecipes.com/wp-content/uploads/2019/02/chicken-biryani-recipe.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Ingridents',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
            Container(
                margin: EdgeInsets.all(10),
                height: 200,
                width: 300,
                //color: Colors.grey,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.black, width: 2)),
                padding: EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      buildItem('Rice'),
                      buildItem('Chicken'),
                      buildItem('Curd'),
                      buildItem('Spices'),
                      buildItem('oil'),
                    ],
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Steps',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: Container(
                  margin: EdgeInsets.all(20),
                  height: 200,
                  width: 330,
                  //color: Colors.grey,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.black, width: 2)),
                  padding: EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        buildStep(' To make delightful chicken biryani, soak saffron in water to prepare saffron water.', 1),
                        buildStep(' Saute onions and tomatoes for 2-3 minutes', 2),
                        buildStep(' Cook biryani on low heat for 5-6 minutes', 3)
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Recepie(

            )
          });
        },
       backgroundColor: Colors.amber,
        //Icon(Icons.favorite_border_rounded,color: Colors.black,),
      ),
    );
  }

  Widget buildItem(String item) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      height: 32,
      width: double.infinity,

      child: Center(
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      //decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
      color: Colors.amber,
    );
  }

  Widget buildStep(String step, int count) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.redAccent,
            child: Text(
              '#$count',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 200,
            child: Text(
              step,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
