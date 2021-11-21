import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class NoticeBoard extends StatefulWidget {
  const NoticeBoard({Key? key}) : super(key: key);

  @override
  _NoticeBoardState createState() => _NoticeBoardState();
}

class _NoticeBoardState extends State<NoticeBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        //mainAxisAlignment:MainAxisAlignment.end,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: Colors.black,size:50),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment,
              color: Colors.black,size:50,),
            label: '',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school,
              color: Colors.black,size: 50,),
            label: '',
            //backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,
              color: Colors.black,size: 50,),
            label: '',
            //backgroundColor: Colors.pink,
          ),
        ],
      ),
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


        child:Column(
          children:<Widget> [

            const Padding(
              padding:  EdgeInsets.fromLTRB(0.0,20.0,150.0,0.0),
              child: Text(
                'Welcome!',
                style: TextStyle(fontWeight: FontWeight.w300,
                    fontSize:50.0),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.fromLTRB(1.0,0.0,200.0,50.0),
              child:  Text(
                'Don\'t Have A Good Day,\n Have A Great Day!',
                style:TextStyle(fontSize:15.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Row(

              mainAxisAlignment:MainAxisAlignment.spaceEvenly,

              children: <Widget>[

                Container(
                  height:400,
                  width: 185,
                  //padding:const  EdgeInsets.symmetric(horizontal: 50,vertical:200),
                  decoration:  BoxDecoration(
                    color: Colors.white ,
                    borderRadius:BorderRadius.circular(25),

                  ),

                  child: const Text( 'Time Table',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),

                  ),
                ),

                Container(
                  height:400,
                  width: 185,
                  decoration:  BoxDecoration(
                    color: Colors.white ,
                    borderRadius:BorderRadius.circular(25),
                  ),
                  child: const Text('Notices',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold), ),
                ),
              ],
            ),
          ],
        ),

      ),
    );

  }
}