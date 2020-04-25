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
  final Date_of_Birth = "Date of Birth";
  final Educational_Attainment = "Educational Attainment";
  final Martial_Status = "Martial Status";
  final Permanent_Address = "Permanent Address";
  final Detailed_Address = "Detailed Address";
  final Email = "Email";
  final Alternative_Phone_Number = "Alternative Phone Number";

  Dio dio;
  BorrowerInformation information = BorrowerInformation(
      birthday: "",
      educationLevel: "",
      maritalStatus: "",
      provinceDesc: "",
      cityDesc: "",
      barangayDesc: "",
      address: "",
      email: "");

  var detailedAddress = "";

  var email = "";

  var alternative_phone = "";

  @override
  void initState() {
    super.initState();
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
      theme: ThemeData(
          primaryColor: Color(0xfffe8437),
          inputDecorationTheme: InputDecorationTheme(
              labelStyle: TextStyle(fontSize: 12, color: Color(0x80616161)))),
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
        body: SingleChildScrollView(
          child: Column(
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
                    buildGenderItem(),
                    Divider(height: 1, thickness: 1),
                    buildMethodItemSelector(
                      information.birthday,
                      Date_of_Birth,
                      () {},
                    ),
                    buildMethodItemSelector(
                      information.educationLevel,
                      Educational_Attainment,
                      () {},
                    ),
                    buildMethodItemSelector(
                      information.maritalStatus,
                      Martial_Status,
                      () {},
                    ),
                    buildMethodItemSelector(
                        information.provinceDesc == ""
                            ? ""
                            : "${information.provinceDesc},${information.cityDesc},${information.barangayDesc}",
                        Permanent_Address,
                        () {}),
                    Container(
                      child: TextField(
                          controller:
                              TextEditingController(text: detailedAddress),
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff616161)),
                          autofocus: false,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            labelText: Detailed_Address,
                          )),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Color(0xffdcdbde)))),
                    ),
                    Container(
                      child: TextField(
                        controller: TextEditingController(text: email),
                        autofocus: false,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff616161)),
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            alignLabelWithHint: true,
                            labelText: Email),
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Color(0xffdcdbde)))),
                    ),
                    Container(
                        child: TextField(
                          controller:
                              TextEditingController(text: alternative_phone),
                          autofocus: false,
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff616161)),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              alignLabelWithHint: true,
                              labelText: Alternative_Phone_Number),
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Color(0xffdcdbde))))),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      width: double.infinity,
                      height: 48,
                      child: CupertinoButton(
                        child: Text("Submit", style: TextStyle(fontSize: 14)),
                        onPressed: () {
                          submitBasicInformation();
                        },
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
      ),
    );
  }

  Row buildGenderItem() {
    return Row(
      children: <Widget>[
        Expanded(
            child: Text("Gender",
                style: TextStyle(fontSize: 14, color: Color(0x80616161)))),
        Center(
          child: Row(
            children: <Widget>[
              Radio(
                value: "Male",
                activeColor: Color(0xfffe8437),
                groupValue: information.sex == "0" ? "Male" : "Female",
                onChanged: (value) {
                  setState(() {
                    information.sex = value;
                  });
                },
              ),
              Text(
                "Male",
                style: TextStyle(fontSize: 14, color: Color(0xff616161)),
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
                groupValue: information.sex == "0" ? "Male" : "Female",
                onChanged: (value) {
                  setState(() {
                    information.sex = value;
                  });
                },
              ),
              Text(
                "Female",
                style: TextStyle(fontSize: 14, color: Color(0xff616161)),
              )
            ],
          ),
        )
      ],
    );
  }

  Stack buildMethodItemSelector(text, labelText, _onTap()) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        TextField(
            controller: TextEditingController(text: text),
            style: TextStyle(fontSize: 14, color: Color(0xff616161)),
            autofocus: false,
            enabled: false,
            decoration: InputDecoration(
                alignLabelWithHint: true, labelText: labelText)),
        GestureDetector(
          onTap: _onTap,
          child: Container(
            color: Colors.transparent,
            width: double.infinity,
            height: 55,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Icon(
              Icons.keyboard_arrow_right,
              size: 18,
            ))
      ],
    );
  }

  void submitBasicInformation() async {
    String path =
        "http://52.77.212.75/cahloanappvest/borrowerInformation/savePersonalInformation";
    var future = await dio.post(path,
        data: {
          "address": information.address,
          "barangay": information.barangay,
          "barangayDesc": information.barangayDesc,
          "birthday": information.birthday,
          "city": information.city,
          "cityDesc": information.cityDesc,
          "educationLevel": information.educationLevel,
          "email": information.email,
          "location": information.location,
          "maritalStatus": information.maritalStatus,
          "orderId": "",
          "otherPhone": "",
          "province": information.province,
          "provinceDesc": information.provinceDesc,
          "sex": information.sex == "Femal" ? 1 : 0
        },
        options: Options(headers: {
          "token":
              "eyJhbGciOiJIUzUxMiJ9.eyJleHAiOjE1ODg2NDc1OTMsInN1YiI6eyJib3Jyb3dlcklkIjozMDIzfSwiY3JlYXRlZCI6MTU4NzM1MTU5MzAzMX0.tsXZuCRhsgs-D6Sf6fM34yfNuWxfToML_1ph3D7Oo_tBBWQuN3ZzYn5a7bO4uCX7pyjJCr-SygBpojzesR-woA"
        }));
    print(future);
    if (future.data["code"] == 200) {
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => BasicInformation()));
    }
  }
}
