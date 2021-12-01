// @dart=2.9

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:terna_connect/screens/welcome_page.dart';

  void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(TernaConnect());
}

// ignore: use_key_in_widget_constructors
class TernaConnect extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Terna Connect',
      theme: ThemeData().copyWith(
        primaryColor: Colors.blueAccent,
        scaffoldBackgroundColor: Colors.lightBlueAccent,
      ),
      home:  WelcomeScreen(),
    );
  }
}

