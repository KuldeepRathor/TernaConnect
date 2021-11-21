import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'login_screen';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Terna Connect',
            style: TextStyle(
              color: Color(0xff545454),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Color(0xff545454),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'Don\'t Have A Good Day, Have A Great Day!',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 5.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: SizedBox(
                width: 400.0,
                height: 200.0,
                child: Card(
                  child: Text(
                    ' Your Time Table',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: SizedBox(
                width: 400.0,
                height: 200.0,
                child: Card(
                  child: Text(
                    '   Notifications!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
