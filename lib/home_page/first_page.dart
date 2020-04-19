import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterapp/information/basic_information.dart';
import 'package:flutterapp/information/disbursement_information.dart';
import 'package:flutterapp/information/emergency_contact.dart';
import 'package:flutterapp/information/id_information.dart';
import 'package:flutterapp/information/work_information.dart';

import '../banner.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstPageState();
  }
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BannerWidget(),
        FlatButton(
          child: Text("Disbursement Information"),
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => DisbursementInformation()));
          },
        ),
        FlatButton(
          child: Text("Basic Information"),
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => BasicInformation()));
          },
        ),
        FlatButton(
          child: Text("Work Information"),
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => WorkInformation()));
          },
        ),
        FlatButton(
          child: Text("ID Information"),
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => IdInformation()));
          },
        ),
        FlatButton(
          child: Text("Emergency Contact"),
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => EmergencyContact()));
          },
        ),
      ],
    );
  }
}
