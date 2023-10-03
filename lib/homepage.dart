import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> photo = [
    'assets/imag/9E51F15B-442B-489B-936A-0BC8D5B364D7_1_105_c.jpeg',
    'assets/imag/94B0B848-DF77-4A08-A2F1-0FE138040CDD_1_105_c.jpeg',
    'assets/imag/17C8E62C-9E52-4984-8399-2D2A574FF474_1_105_c.jpeg',
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 236, 236),
      appBar: AppBar(
        title: Text('carousal_slider'),
      ),
      body: Center(
        child: CarouselSlider(
            items: photo
                .map((e) => Container(
                      height: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(e), fit: BoxFit.cover)),
                      // child: Image.asset(e),
                    ))
                .toList(),
            options: CarouselOptions(autoPlay: true, enlargeCenterPage: true)),
      ),
    );
  }
}