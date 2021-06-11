import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newPlan.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("menu"),
        ),
        backgroundColor: Colors.blueGrey,
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/pexels-photo-799443.jpeg"),
                  fit: BoxFit.cover,
                )),
            child: new Column(children: [
              SizedBox(height: 300),
              new Container(

                alignment: Alignment(0, 0),
                // ignore: deprecated_member_use
                child: RaisedButton.icon(
                    onPressed: () {


                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => newPlan()),
                      );},
                    label: Text('Make New Plan',
                        style: TextStyle(

                          fontSize: 30,)
                    ),
                    color: Colors.teal,
                    icon: Icon(Icons.airport_shuttle_sharp, size: 30,)

                ),
              ),
              SizedBox(height: 20),
              new Container(
                alignment: Alignment(0, 0),
                // ignore: deprecated_member_use
                child: RaisedButton.icon(
                    onPressed: () {},
                    label: Text('View All Plans   ',
                        style: TextStyle(

                          fontSize: 30,)
                    ),
                    color: Colors.teal,
                    icon: Icon(Icons.apps, size: 30,)

                ),
              ),
              SizedBox(height: 20),
              new Container(
                alignment: Alignment(0, 0),
                // ignore: deprecated_member_use
                child: RaisedButton.icon(
                    onPressed: () {},
                    label: Text('Exit                   ',
                        style: TextStyle(

                          fontSize: 30,)
                    ),
                    color: Colors.teal,
                    icon: Icon(Icons.arrow_back_rounded, size: 30,)

                ),
              )

            ]
            )

        )
    );
  }
}
