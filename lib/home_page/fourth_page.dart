import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FourthPageState();
  }
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'The fourth page',
        style: TextStyle(fontSize: 25, decoration: TextDecoration.none),
      ),
    );
  }
}
