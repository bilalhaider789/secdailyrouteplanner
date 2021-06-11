import 'dart:io';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:i_am_rich/menu.dart';

void main() => runApp(app());

class app extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route Planner',

      home: new homeScreen());

  }


}
class homeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        floatingActionButton:FloatingActionButton.extended(

          onPressed: () {


            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => menu()),
            );},
          //allign
          label: const Text('Lets Started'),
          icon: const Icon(Icons.airport_shuttle_sharp),
          backgroundColor: Colors.pink,

        ),
        // do something to wait for 2 seconds




        // do something to wait for 2 seconds


        backgroundColor: Colors.blueGrey,
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/pexels-photo-799443.jpeg"),
                fit: BoxFit.cover,
              )),



          child: new Column(children: [
            SizedBox(height: 100),


            new Container(
              alignment: Alignment(0.3, 0),
              child: Text('DAILY\nROUTE\nPLANNER',
                  style: TextStyle(
                    //color:Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 60,
                    //fontFamily: 'lobster',
                    /*decoration: TextDecoration.underline,
               decorationColor: Colors.black,
               decorationStyle: TextDecorationStyle.wavy,
               decorationThickness: 0,*/
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.blue[300],
                  )


              ),
            ),
            SizedBox(height: 320),
            new Container(
                alignment: Alignment(0, 0),
                child: Text('Successfuly Signed In !',
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    )
                )
            ),



            //SizedBox(height: 20),




          ]


          ),
        )


    );

  }
}







