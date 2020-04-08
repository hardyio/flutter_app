import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/home_page/first_page.dart';
import 'package:flutterapp/home_page/fourth_page.dart';
import 'package:flutterapp/home_page/second_page.dart';
import 'package:flutterapp/home_page/third_page.dart';

class AppWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

currentBody(int index){
  switch(index){
    case 0:
      if (firstPage == null) {
        firstPage = FirstPage();
      }
      return firstPage;
      break;
    case 1:
      if (secondPage == null) {
        secondPage = SecondPage();
      }
      return secondPage;
      break;
    case 2:
      if (thirdPage == null) {
        thirdPage = ThirdPage();
      }
      return thirdPage;
      break;
    case 3:
      if (fourthPage == null) {
        fourthPage = FourthPage();
      }
      return fourthPage;
      break;
  }
}

FirstPage firstPage;
SecondPage secondPage;
ThirdPage thirdPage;
FourthPage fourthPage;

class _AppState extends State<AppWidget> {


  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: currentBody(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('first')),
          BottomNavigationBarItem(icon: Icon(Icons.add_photo_alternate), title: Text('second')),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text('third')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('fourth')),
        ],
      ),
    );
  }
}
