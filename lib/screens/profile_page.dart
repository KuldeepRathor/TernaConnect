import 'package:flutter/material.dart';
import 'register_page.dart';

class profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Profile',
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget>[
                SizedBox(
                  height: 350.0,
                  child: Image.asset('images/profile_cropped.png'),
                ),

                const Center(
                  child: Text(
                    'Student Name',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Year and Division',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.black38,
                    fontSize: 30.0,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Email Address',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.black38,
                    fontSize: 30.0,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}