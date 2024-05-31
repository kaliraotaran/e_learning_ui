

import 'dart:ffi';

import 'package:e_learning_ui/LandingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      'assets/1.jpg',
      'assets/2.jpg',
      'assets/3.jpg',
      'assets/4.jpg',
      'assets/5.jpg',
    ];
    List titles = [
      'Graphic Designing',
      'Cinematography',
      'Oceans',
      'Anime',
      'Photo Shop'
    ];
    
    return Scaffold(
      body: Stack(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          height: 400,
          width: double.infinity,
          color: bgcolor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             GestureDetector(
            onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back_ios, color: Colors.white,),
        
          ), 
          SizedBox(height: 20,),
          Center(child: Text('Ready to Learn? ', style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600, color: Colors.white),)),
          ],),
        ),
        
        Container(
          margin: EdgeInsets.only(top: 180),
          padding: EdgeInsets.only(top: 20, right: 20, left: 20),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)), color: Colors.white),
          child:GridView.count(crossAxisCount: 2, 
           
          children: List.generate(images.length, (index) { 
          return Container(
            margin: EdgeInsets.only(top: 30, right: 10),
            width: 70,
            height:70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child:Stack(
                children: [
                  ClipRRect(
                borderRadius: BorderRadius.circular(20.0), // Change 50.0 to your desired radius
                    child:
                  Image.asset(images[index], fit: BoxFit.cover, width: double.infinity, height: double.infinity,), ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align (
                      alignment: Alignment.bottomCenter,
                      child: Text(titles[index], style: TextStyle(color: Color.fromARGB(255, 249, 181, 121), fontWeight: FontWeight.w500, fontSize: 20, ),),),
                  )

                ],
              ) ,
          );}
          
          ),
          )
        )
      ],)
      
    );
  }
}