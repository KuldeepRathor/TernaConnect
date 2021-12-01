import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Resources  extends StatefulWidget {
  const Resources ({Key? key}) : super(key: key);
  @override
  _ResourcesState createState() => _ResourcesState();
}
class _ResourcesState extends State<Resources> {
  final List<String> entries = <String>['Textbooks', 'Notes', 'Previous year papers'];
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
          child:Center(
            child: Column(
              children:<Widget> [
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'RESOURCES',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize:25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: entries.length,

                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration:  BoxDecoration(
                              color: Colors.white ,
                              borderRadius:BorderRadius.circular(25),
                            ),
                            height: 100,
                            child: Center(child: Text(' ${entries[index]}')),
                          ),
                        );
                      }
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}