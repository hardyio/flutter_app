import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondPageState();
  }
}

class _SecondPageState extends State<SecondPage> {
  static const String MATHOD_NAME = "second_page";
  static const mc = MethodChannel(MATHOD_NAME);

  String _result ="";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("The second page"),
          FlatButton(
            child: Text("调用native"),
            onPressed: () async {
              String result = await mc.invokeMethod("call_method");
              print(result);
              setState(() {
                _result = result;
              });
            },
          ),
          Text(_result),
        ],
      ),
    );
  }
}
