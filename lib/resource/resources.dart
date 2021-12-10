import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class Resources  extends StatefulWidget {
  const Resources ({Key? key}) : super(key: key);
  @override
  _ResourcesState createState() => _ResourcesState();
}
class _ResourcesState extends State<Resources> {
  final List<String> entries = <String>['s', 'Notes', 'Previous year papers'];
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.black,
                    // foreground
                  ),
                  onPressed: () {
                    _launchURL('https://drive.google.com/drive/folders/1baCOfZb1SpSn2M0zP1yngHZfh7u1LBh9?usp=sharing');
                  },
                  child: Text('Textbooks'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.black, // foreground
                  ),
                  onPressed: () { 
                    _launchURL('https://drive.google.com/drive/folders/1Ic9Z8-qGvN4sZrNWX1Ze59YxpHgTabJ8?usp=sharing');
                  },
                  child: Text('Notes'),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.black, // foreground
                  ),
                  onPressed: () { 
                    _launchURL('https://drive.google.com/drive/folders/1KrhrPuZfwiYKpdiqeX0XtNhlRVg8V0TB?usp=sharing');
                  },
                  child: Text('Previous year papers'),
                )


              ],
            ),
          ),
        )
    );
  }
}


void _launchURL(_url) async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
