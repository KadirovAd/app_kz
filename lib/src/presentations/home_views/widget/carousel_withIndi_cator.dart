// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarouselWithIndicator extends StatefulWidget {
  const CarouselWithIndicator({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;
  final List<String> imgList = [
    'https://truck-planet.com/upload/iblock/174/4316hrieot1q5xr3cmns5uil6ojohn30.jpg',
    'https://truck-planet.com/upload/medialibrary/b57/jt82b675gvn3rv81w942jr45yfts5lbm.jpg',
    'https://truck-planet.com/upload/medialibrary/d4c/dk0pm8q9t16dfeio97l94pkd6hsiy6h2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> carouselItems = [];
    for (int i = 0; i < imgList.length; i++) {
      carouselItems.add(
        Builder(
          builder: (BuildContext context) {
            return Container(
              height: 12.h,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imgList[i]),
                ),
              ),
            );
          },
        ),
      );
    }
    return Column(
      children: [
        SizedBox(
          height: 12.h,
          width: double.infinity,
          child: CarouselSlider(
            items: carouselItems,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
