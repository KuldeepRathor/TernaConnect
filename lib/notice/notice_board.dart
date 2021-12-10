import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:terna_connect/notice/chat_screen2.dart';

import 'chat_screen.dart';
class Noticeboard extends StatefulWidget {
  const Noticeboard({Key? key}) : super(key: key);
  @override
  _NoticeboardState createState() => _NoticeboardState();
}
class _NoticeboardState extends State<Noticeboard> {
  final List<int> noticenumber = <int>[1, 2, 3,4,5,6,7];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.lightBlueAccent,
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
      body: SafeArea(
          child:SingleChildScrollView(
            child: Center(
              child: Column(
                children:<Widget> [
                  const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      'NOTICES',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:25.0
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  ChatScreen()),
                          );
                        },
                        child: Container(
                          height: 340,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text(
                              'Technical',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  ChatScreen2()),
                          );
                        },
                        child: Container(
                          height: 340,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text(
                              'Non Technical',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}