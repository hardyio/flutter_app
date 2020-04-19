import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'loading.dart';
import 'app.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Color(0xfffe8437)),
        home: LoadingPage(),
        routes: <String, WidgetBuilder>{
          "app": (BuildContext context) => AppWidget(),
          "company": (BuildContext context) {
            return WebviewScaffold(
              //编译sdk版本大于等于9.0时，网络请求必须使用https，所以需要在application里配置networkSecurityConfig
              url: "https://www.baidu.com",
              appBar: AppBar(
                title: Text('百度'),
              ),
            );
          }
        }));
