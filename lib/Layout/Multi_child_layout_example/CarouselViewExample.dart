import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int _currentIndex = 0;

  // List of image paths (add your asset images in pubspec.yaml)
  final List<String> imgList = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: imgList
                .map((item) => Container(
              child: Image.asset(item, fit: BoxFit.cover),
            ))
                .toList(),
            options: CarouselOptions(
              height: 400,
              initialPage: 0,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Current Index: $_currentIndex',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
