

import 'dart:math';

import 'package:e_learning_ui/LandingPage.dart';
import 'package:e_learning_ui/learn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(child:const Icon(CupertinoIcons.back, size: 30,), onTap: () {
          Navigator.pop(context);
        },),
        actions:const [
          Padding(
            padding:   EdgeInsets.symmetric(horizontal: 20, vertical: 5),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Welcome', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),), 
              Text('Taran Kalirao', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),)
            ],
           ),
          )
        ],
      ),
      body:   SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child:   Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(text: TextSpan(
                      children: [
                      const  TextSpan(text: 'Get Your ', style: TextStyle(color:Colors.black, fontSize: 28, fontWeight: FontWeight.w600)),
                        TextSpan(text: 'Best', style: TextStyle(color: bgcolor, fontSize: 28, fontWeight: FontWeight.w600) )
                      ]
                    )),
                     Text('Course',  style: TextStyle(color: bgcolor, fontSize: 30, fontWeight: FontWeight.w600))
                  ],
                ),
        
              const SizedBox(height: 30,),
               Container(
                padding:const EdgeInsets.symmetric(horizontal: 20),
                height: 390,
                width: double.infinity,
                decoration: BoxDecoration(color: bgcolor, borderRadius: BorderRadius.circular(30), image: DecorationImage(image: AssetImage('assets/pic.jpg', ), fit: BoxFit.fill)),
                child:const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('3D Illustrations', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
                    SizedBox(height: 20,),
                    Text('By Taran', style: TextStyle(color: Colors.grey, fontSize: 15),),
                    SizedBox(height: 10,),
                 
                  ],
                )
               ),
               SizedBox(height: 30,),
               Text('Best This Week', style:TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold) ,),
               SizedBox(height: 10,),
        
               Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),boxShadow: [ BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1, 
                      blurRadius: 5
                    )]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                     ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset('assets/pic.jpg'),
                     ),
                     
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        Text('Start Learning Wall Art', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),),
                        SizedBox(height: 10,),
                        Text(' By Unknown', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 13),)
                      ],
                     ),
                     SizedBox(width: 45,),
                     Center(
                      child: Icon(CupertinoIcons.arrow_right, size: 30,),
                     )
                    ],),
               ),

                SizedBox(height: 20,),
               GestureDetector(
                onTap: (){
                  Navigator.push(context,PageTransition(child:LearnPage() , type: PageTransitionType.fade) );
                },
                 child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: bgcolor,
                    borderRadius: BorderRadius.circular(30),boxShadow: [ BoxShadow(
                        color: bgcolor.withOpacity(0.7),
                        spreadRadius: 2, 
                        blurRadius: 5
                      )]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         
                       Text('Ready to Learn', style: TextStyle(color: Colors.white, fontSize: 20),),
                         Center(
                        child: Icon(CupertinoIcons.arrow_right, size: 30,color: Colors.white,),
                       )
                      ],),
                 ),
               )
          ],),
        ),
      ),
    );
  }
}