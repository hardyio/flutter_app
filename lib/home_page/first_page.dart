import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
      ],
    );
  }
}
