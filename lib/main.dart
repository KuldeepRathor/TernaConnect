import 'package:flutter/material.dart';
import 'package:terna_connect/home_page.dart';
import 'package:terna_connect/login_page.dart';
import 'package:terna_connect/notice_board.dart';
import 'package:terna_connect/register_page.dart';

void main() {
  runApp(TernaConnect());
}

// ignore: use_key_in_widget_constructors
class TernaConnect extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Terna Connect',
      theme: ThemeData().copyWith(
        primaryColor: Colors.blueAccent,
        scaffoldBackgroundColor: Colors.lightBlueAccent,
      ),
      home: const MyLogin(),
    );
  }
}

