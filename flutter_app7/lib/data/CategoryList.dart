import 'package:flutter/material.dart';
import 'package:flutter_app7/Widgets/Category.dart';
import 'package:flutter_app7/Widgets/recepie.dart';

List Categories_list=[
  Category(id:1,
    name:'Indian',
    imageURL: 'https://thumbor.thedailymeal.com/O5BS3X-3J3JKcsTKYdYd996xqsI=/870x565/https://www.thedailymeal.com/sites/default/files/slideshows/1943277/2108053/0.jpg',
    allrecipies: [
      Recepie(
        imageurl: 'https://www.indianhealthyrecipes.com/wp-content/uploads/2019/02/chicken-biryani-recipe.jpg',
        name: 'Biryani',
        money: 'Affordable',
        difficulty: 'Simple',
      ),
      Recepie(
        imageurl: 'https://sukhis.com/wp-content/uploads/2020/01/Dosa-500x400.jpg',
        name: 'Dosa',
        money: 'Affordable',
        difficulty: 'Simple',
      ),
      Recepie(
        imageurl: 'https://s9c2c8i7.rocketcdn.me/wp-content/uploads/2020/11/dal-bati-churma.jpg',
        name: 'Dal-Bati',
        money: 'Affordable',
        difficulty: 'Simple',
      ),
      Recepie(
        imageurl: 'https://www.blueosa.com/wp-content/uploads/2020/07/butter-chicken-Chicken-Makhani.jpg',
        name: 'Chicken Makhani',
        money: 'Affordable',
        difficulty: 'Moderate',
      ),
    ],),
  Category(id:2,name:'Mughali',imageURL: 'https://curlytales.com/wp-content/uploads/2019/07/Untitled-design-100-1280x720.png',allrecipies: [],),
  Category(id:3,name:'Chinese',imageURL: 'https://www.thespruceeats.com/thmb/X6mg_2VBCQQ2X8VrLcPTf8_4ce0=/2733x2050/smart/filters:no_upscale()/chinese-take-out-472927590-57d31fff3df78c5833464e7b.jpg',allrecipies: [],),
  Category(id:4,name:'Italian',imageURL: 'https://www.onhisowntrip.com/wp-content/uploads/2020/08/RACQ.jpg',allrecipies: [],),
  Category(id:5,name:'Spanish',imageURL: 'https://res.cloudinary.com/wegowordpress/images/f_auto,q_auto/v1571386678/shutterstock_1060937360_pzbrjz/shutterstock_1060937360_pzbrjz.jpg',allrecipies: [],),
  Category(id:6,name:'Japanase',imageURL: 'https://media-cdn.tripadvisor.com/media/photo-s/15/32/44/43/flat-lay-goals.jpg',allrecipies: [],),
  Category(id:7,name:'Moroccan',imageURL: 'https://www.kanbrik.com/wp-content/uploads/2019/11/moroccan-cuisine-2nd-best-cuisine-in-the-world-3.jpg',allrecipies: [],),
  Category(id:8,name:'Thai',imageURL: 'https://media-cdn.tripadvisor.com/media/photo-s/15/3c/6e/ba/we-thai-cuisine.jpg',allrecipies: [],),
  Category(id:9,name:'Turksih',imageURL: 'https://www.tooistanbul.com/wp-content/uploads/2014/07/turkish-food.jpg',allrecipies: [],),
  Category(id:10,name:'Indonesian',imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh36ho038AuHFwjrfuXmyS2n_fIoD7RNwapg&usqp=CAU',allrecipies: [],),
];