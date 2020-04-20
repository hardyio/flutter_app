import 'dart:convert';

import 'package:common_utils/common_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/bean/borrower_information.dart';

import 'disbursement_information.dart';

class BasicInformation extends StatefulWidget {
  @override
  _BasicInformationState createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {
  final LABEL1 = "Date of Birth";
  final LABEL2 = "Educational Attainment";
  final LABEL3 = "Martial Status";
  final LABEL4 = "Permanent Address";
  final LABEL5 = "Detailed Address";
  final LABEL6 = "Email";
  final LABEL7 = "Alternative Phone Number";

  String itemText1 = "";
  var _birthAlignment = Alignment.bottomLeft;

  Dio dio;
  BorrowerInformation information = BorrowerInformation();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LogUtil.init(isDebug: true);
    dio = Dio();
    _getBasicInformation();
  }

  void _getBasicInformation() async {
    String path =
        "http://52.77.212.75/cahloanappvest/borrowerInformation/getStepCompletionRatio";
    var info = await dio.post(path,
        data: {"orderId": 1824, "appVersionCode": 1, "packageChannel": 2},
        options: Options(headers: {
          "token":
              "eyJhbGciOiJIUzUxMiJ9.eyJleHAiOjE1ODg2NDc1OTMsInN1YiI6eyJib3Jyb3dlcklkIjozMDIzfSwiY3JlYXRlZCI6MTU4NzM1MTU5MzAzMX0.tsXZuCRhsgs-D6Sf6fM34yfNuWxfToML_1ph3D7Oo_tBBWQuN3ZzYn5a7bO4uCX7pyjJCr-SygBpojzesR-woA"
        }));
    information =
        BorrowerInformation.fromJson(info.data["data"]["borrowingInformation"]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xfffe8437)),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 18)),
          title: Text(
            "Basic Information",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                "The data is only used for loan services\nand saved under strict confidentiality",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              thickness: 5,
              height: 5,
              color: Color(0xffeceff6),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Text("Gender",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0x80616161)))),
                      Center(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              groupValue:
                                  information.sex == "M" ? "Male" : "Female",
                              value: "Male",
                              activeColor: Color(0xfffe8437),
                              onChanged: (value) {
                                setState(() {
                                  information.sex = value;
                                });
                              },
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff616161)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Center(
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: "Female",
                              activeColor: Color(0xfffe8437),
                              groupValue:
                                  information.sex == "M" ? "Male" : "Female",
                              onChanged: (value) {
                                setState(() {
                                  information.sex = value;
                                });
                              },
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff616161)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(height: 1, thickness: 1),
                  SizedBox(height: 6),
                  buildItemSelectView(
                      context, LABEL1, _birthAlignment, information.birthday, () {}),
                  buildItemSelectView(
                      context, LABEL1, _birthAlignment, itemText1, () {}),
                  buildItemSelectView(
                      context, LABEL1, _birthAlignment, itemText1, () {}),
                  buildItemSelectView(
                      context, LABEL1, _birthAlignment, itemText1, () {}),
                  Container(
                    width: double.infinity,
                    height: 48,
                    child: CupertinoButton(
                      child: Text("Submit", style: TextStyle(fontSize: 14)),
                      onPressed: () {},
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xfffe8437),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
