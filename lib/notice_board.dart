import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      backgroundColor:Colors.lightBlue,
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
                  Text(
                    'NOTICES',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize:25.0

                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 140,
                        width: 180,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),

                        ),

                        child: Center(
                            child: Text('Notice 1')),

                      ),
                      Container(
                        height: 140,
                        width: 180,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),

                        ),

                        child: Center(
                            child: Text('Notice 2')),

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