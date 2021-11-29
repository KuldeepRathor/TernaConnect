import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          iconTheme:const IconThemeData(
            color: CupertinoColors.black,
          ),
          title: const Text(
            'Terna Connect',
            style: TextStyle(
              color: Colors.black,
              fontSize:20.0,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
            child: Column(

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 90.0,

                    backgroundImage: AssetImage('images/profile.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'Student Name\nYear and Division\nEmail Address',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

              ],
            )),
      ),
    );
  }
}