import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class BankNameListPage extends StatefulWidget {
  @override
  _BankNameListPageState createState() => _BankNameListPageState();
}

class _BankNameListPageState extends State<BankNameListPage> {
  List bankNameList = [];
  Dio dio;

  @override
  void initState() {
    super.initState();
    dio = Dio();
    getBankNameList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xfffe8437), primaryColorDark: Color(0xfffe8437)),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, size: 18),
            color: Colors.white,
            onPressed: () {},
          ),
          title: Text("Select Bank Name",
              style: TextStyle(fontSize: 17, color: Colors.white)),
        ),
        body: bankNameList.length == 0
            ? Center(
                child: Text("Loading..."),
              )
            : ListView.separated(
                separatorBuilder: (context, index) =>
                    Divider(height: 5, thickness: 5, color: Color(0xffeceff6)),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.pop(context,bankNameList[index]);
                      },
                      child: Container(
                        color: Colors.transparent,
                        width: double.infinity,
                        height: 42,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                bankNameList[index]["accountDesc"],
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff4d4d4d)),
                              )),
                        ),
                      ));
                },
                itemCount: bankNameList.length,
              ),
      ),
    );
  }

  void getBankNameList() async {
    String path =
        "http://52.77.212.75/cahloanappvest/borrowerInformation/getWithdrawalMethodListByAccountId";
    var response = await dio.post(path,
        data: {"accountId": 1, "appVersionCode": 1, "packageChannel": 2},
        options: Options(headers: {
          "token":
              "eyJhbGciOiJIUzUxMiJ9.eyJleHAiOjE1ODg3MzU2NzAsInN1YiI6eyJib3Jyb3dlcklkIjoyOTUzfSwiY3JlYXRlZCI6MTU4NzQzOTY3MDQyN30.ClB7VNQkKVu7hJ-67mLjO650GHcAlguHLgcsWV5Yt_tczx62yyoxonHgE8OCCxJUFG48YRVjCSsu2np3h2JNjQ"
        }));
    setState(() {
      bankNameList = response.data["data"];
    });
  }
}
