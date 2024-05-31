
import 'package:e_learning_ui/Homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';


Color bgcolor = Color.fromARGB(255, 255, 109, 5);
class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity, 
          decoration: BoxDecoration(color: Color.fromARGB(255, 255, 109, 5)),
           
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            
            height: 320,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
               borderRadius: BorderRadius.only(
                topRight: Radius.circular(38), 
                topLeft: Radius.circular(38)
                )),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                SizedBox(height: 40,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(children: [
                        TextSpan(text: 'Lets Start ', style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Improving', style: TextStyle(color: bgcolor, fontSize: 28, fontWeight: FontWeight.bold))
                      ])),
                      RichText(text: TextSpan(children: [
                        TextSpan(text: 'Your ', style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Drawing ', style: TextStyle(color: bgcolor, fontSize: 28, fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Skill', style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold))
                  
                      ])),
                    ],
                  ),
                ),
                SizedBox(height: 20,),

                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', style: TextStyle(color: Colors.grey),),

                SizedBox(height: 40,),
                GestureDetector(
                  onTap: (){
                          Navigator.push(context, PageTransition(child: Homepage(), type: PageTransitionType.fade, duration: Duration(milliseconds: 100)),  );
                  },
                  child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: bgcolor, borderRadius: BorderRadius.circular(15)),
                  child: Center(child: Text('Get Started', style: TextStyle(color: Colors.white),),),
                ))
                   
              ],),
            ),
            ),
        )
      ],
    );
  }
}