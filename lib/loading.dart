import 'package:flutter/material.dart';

void main() => runApp(LoadingPage());

class LoadingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingStateWidget();
  }
}

class _LoadingStateWidget extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/loading.jpg',
          fit: BoxFit.fill,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 20),
          child: Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              'Naruto',
              style: TextStyle(
                  fontSize: 35,
                  decoration: TextDecoration.none,
                  color: Colors.black),
              textAlign: TextAlign.end,
            ),
          ),
        ),
      ],
    );
  }
}
