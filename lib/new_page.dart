import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  var shortName;
  var name;

  NewPage(this.shortName, this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新页面'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text("回退"),
              onPressed: () {
                Navigator.pop(context,"返回了信息");
              },
            ),
            ListTile(
              title: Text(
                shortName,
                style: TextStyle(color: Colors.brown),
              ),
              subtitle: Text(
                name,
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
