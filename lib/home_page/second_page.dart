import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondPageState();
  }
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'The second page',
        style: TextStyle(fontSize: 25, decoration: TextDecoration.none),
      ),
    );
  }
}
