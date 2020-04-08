import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BannerWidget extends StatelessWidget {
  List<String> bannerList = <String>[
    "assets/images/banner1.jpg",
    "assets/images/banner2.jpg",
    "assets/images/banner3.jpg",
    "assets/images/banner4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = width * 540.0 / 1080.0;
    return Container(
      width: width,
      height: height,
      child: Swiper(
        itemBuilder: (context, index) => Container(
          child: Image.asset(
            bannerList[index],
            width: width,
            height: height,
            fit: BoxFit.fitWidth,
          ),
        ),
        itemCount: bannerList.length,
        scrollDirection: Axis.horizontal,
        autoplay: true,
      ),
    );
  }
}
