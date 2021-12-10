import 'package:flutter/material.dart';
import 'package:terna_connect/notice/notice_board.dart';
import 'package:terna_connect/screens/home_page.dart';
import 'package:terna_connect/screens/profile_page.dart';
import 'package:terna_connect/resource/resources.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => new _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _pageIndex = 0;
  late PageController _pageController;

  List<Widget> tabPages = [
    HomePage(),
    Noticeboard(),
    Resources(),
    profilepage(),
    //Screen3(),
    //Screen4(),
  ];

  @override
  void initState(){
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: onTabTapped,

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

      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }
  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,duration: const Duration(milliseconds: 700),curve: Curves.easeInOut);
  }
}