import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/componants/MainPage/BannerContainer.dart';
import 'package:flutter/material.dart';

final List<Widget> imgList = [
  const BannerContainer(),
  const BannerContainer(),
  const BannerContainer(),
];

int currentIndex = 0;

class SlideShowBanner extends StatefulWidget {
  const SlideShowBanner({super.key});

  @override
  State<SlideShowBanner> createState() => _SlideShowBannerState();
}

class _SlideShowBannerState extends State<SlideShowBanner> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.8,
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: imgList,
          ),
        ],
      ),
    );
  }
}
