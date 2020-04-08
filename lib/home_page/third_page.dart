import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ThirdPageState();
  }
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'The third page',
        style: TextStyle(fontSize: 25, decoration: TextDecoration.none),
      ),
    );
  }
}
