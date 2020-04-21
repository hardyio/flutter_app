import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bank_name_list.dart';

class DisbursementInformation extends StatefulWidget {
  @override
  _DisbursementInformationState createState() =>
      _DisbursementInformationState();
}

class _DisbursementInformationState extends State<DisbursementInformation> {
  final String LABEL1 = "Payment Method";
  final String LABEL2 = "Bank Name";
  final String BANK_LABEL = "Account No.";
  final String GCASH_LABEL = "Account";
  final String GCASH_LABEL2 = "Re-enter account number";

  var paymentMethod = "";
  var bankName = "";
  bool bankOffstage = true;
  bool gcashAccountOffstage = true;
  bool gcashAccountOffstage2 = true;
  bool tipOffstage = true;
  var itemList = ["Bank Transfer", "GCash", "Cash Pickup"];

  @override
  Widget build(BuildContext context) {
    var _onTap = () {
      showBottomDialog(context);
    };
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xfffe8437), primaryColorDark: Color(0xfffe8437)),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 18,
          ),
          title: Text(
            "Disbursement Information",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, color: Colors.white),
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
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      TextField(
                          controller:
                              TextEditingController(text: paymentMethod),
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff616161)),
                          autofocus: false,
                          enabled: false,
                          decoration: InputDecoration(
                              alignLabelWithHint: true,
                              labelText: LABEL1,
                              labelStyle: TextStyle(
                                  color: Color(0x80616161), fontSize: 12))),
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
                  ),
                  Offstage(
                    offstage: bankOffstage,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: <Widget>[
                            TextField(
                              controller: TextEditingController(text: bankName),
                              autofocus: false,
                              enabled: false,
                              decoration: InputDecoration(
                                  alignLabelWithHint: true,
                                  labelText: LABEL2,
                                  labelStyle: TextStyle(
                                      color: Color(0x80616161), fontSize: 12)),
                              onChanged: (str) {
                                if (str.length == 11) {}
                              },
                            ),
                            GestureDetector(
                              onTap: () async {
                                var bankBean = await Navigator.push(context, new MaterialPageRoute(builder: (context)=>BankNameListPage()));
                                setState(() {
                                  bankName = bankBean["accountDesc"];
                                });
                              },
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
                        ),
                        TextField(
                          autofocus: false,
                          decoration: InputDecoration(
                              alignLabelWithHint: true,
                              labelText: BANK_LABEL,
                              labelStyle: TextStyle(
                                  color: Color(0x80616161), fontSize: 12)),
                        )
                      ],
                    ),
                  ),
                  Offstage(
                      offstage: gcashAccountOffstage,
                      child: TextField(
                        autofocus: false,
                        onChanged: (char) {
                          if (char.length == 11) {}
                        },
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            labelText: GCASH_LABEL,
                            labelStyle: TextStyle(
                                color: Color(0x80616161), fontSize: 12)),
                      )),
                  Offstage(
                      offstage: gcashAccountOffstage2,
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            labelText: GCASH_LABEL2,
                            labelStyle: TextStyle(
                                color: Color(0x80616161), fontSize: 12)),
                      )),
                  Offstage(
                    offstage: tipOffstage,
                    child: Padding(
                      padding: EdgeInsets.only(top: 14),
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text:
                                "Please ensure all your information is correct to avoid failure of transaction. ",
                            style: TextStyle(fontSize: 12)),
                        TextSpan(
                            text:
                                "(Note : If your money is disbursed to others because of your mistake, you still have to full repay)",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffff6956)))
                      ])),
                    ),
                  ),
                  SizedBox(height: 26),
                  Container(
                      width: double.infinity,
                      height: 48,
                      child: CupertinoButton(
                        child: Text("Submit",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                        onPressed: () {},
                        color: Color(0xfffe8437),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showBottomDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        children: <Widget>[
          Divider(
            height: 4,
            thickness: 4,
            color: Color(0xfffe8437),
          ),
          Stack(
            alignment: Alignment.centerRight,
            children: <Widget>[
              Container(
                  height: 40,
                  child: Center(
                      child: Text(LABEL1,
                          style: TextStyle(
                              fontSize: 14, color: Color(0x80616161))))),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
          Divider(height: 1, thickness: 1),
          Container(
            height: 3 * 42.0,
            child: ListView.separated(
                separatorBuilder: (context, index) =>
                    Divider(height: 1, thickness: 1),
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                        paymentMethod = itemList[index];
                        if (index == 0) {
                          //Bank
                          bankOffstage = false;
                          gcashAccountOffstage = true;
                          tipOffstage = false;
                        } else if (index == 1) {
                          //GCash
                          bankOffstage = true;
                          gcashAccountOffstage = false;
                          tipOffstage = false;
                        } else {
                          bankOffstage = true;
                          gcashAccountOffstage = true;
                          tipOffstage = true;
                        }
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      height: 42,
                      color: Colors.transparent,
                      child: Center(child: Text(itemList[index])),
                    )),
                itemCount: itemList.length),
          )
        ],
      ),
    );
  }
}

buildItemSelectView(context, label, _alignment, itemText, _onTap) {
  return GestureDetector(
    onTap: _onTap,
    child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 38,
              child: AnimatedAlign(
                  alignment: _alignment,
                  duration: Duration(milliseconds: 100),
                  onEnd: () {},
                  child: Text(
                    label,
                    style: TextStyle(fontSize: 12, color: Color(0x80616161)),
                  )),
            ),
            Container(
                height: 38,
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 6),
                            child: Text(itemText,
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff4d4d4d))),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 10)
                      ],
                    ))),
          ],
        ),
        SizedBox(height: 6),
        Divider(height: 1, thickness: 1, color: Color(0xffdcdbde)),
        Text(
          "",
          style: TextStyle(fontSize: 12, color: Color(0xffff6956)),
        ),
        SizedBox(height: 2)
      ],
    ),
  );
}
