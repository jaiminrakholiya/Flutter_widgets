import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Curouselviewexample extends StatefulWidget {
  const Curouselviewexample({super.key});

  @override
  State<Curouselviewexample> createState() => _CurouselviewexampleState();
}

class _CurouselviewexampleState extends State<Curouselviewexample> {
  final List<String> imgList = [
    'assets/on1img.png',
    'assets/on2img.png',
    'assets/on4img.png',
    // Add more images here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CurouselView',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              viewportFraction: 0.8,
            ),
            items: imgList.map((item) => Container(
              child: Image.asset(item, fit: BoxFit.cover, width: double.infinity),
            )).toList(),
          ),
        ],
      ),
    );
  }
}
