import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:animated_card/animated_card.dart';

class HomePage extends StatefulWidget {
  static const String id = 'login_screen';


  const HomePage({Key? key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  //final items = List<String>.generate(51, (i) => "Item $i");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(
          color: CupertinoColors.black,
        ),
        title:
        const Text(
          'Terna Connect',
          style: TextStyle(
            color: Colors.black,
            fontSize:20.0,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body:
      SafeArea(
        child: Column(
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
              padding:  EdgeInsets.fromLTRB(1.0,0.0,200.0,0.0),
              child:  Text(
                'Don\'t Have A Good Day,\n Have A Great Day!',
                style:TextStyle(fontSize:15.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Expanded(
              child: Row(
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
                    child:  Text('Notifications',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                    //   child: ListView.builder(
                    //     itemCount: items.length,
                    //     itemBuilder: (context, index) {
                    //       return ListTile(
                    //         title: Text(items[index]),
                    //       );
                    //     },
                    //   )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}