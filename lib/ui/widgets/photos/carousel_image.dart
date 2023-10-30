import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:team_project/data/model/product.dart';

class CarouselImage extends StatefulWidget {
  final Product product;

  CarouselImage({required this.product});

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  late Product product;
  late List<Widget> productPicList;
  late List<String> keywords;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    product = widget.product;
    productPicList = product.productPics
        .map((e) => Image.memory(
              fit: BoxFit.fill,
              base64.decode(e.productPicUrl),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
          ),
          CarouselSlider(
            items: productPicList,
            options: CarouselOptions(onPageChanged: (index, reason) {
              setState(() {
                _currentPage = index;
              });
            }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: makeIndicator(productPicList, _currentPage),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeIndicator(List list, int _currentPage) {
  List<Widget> results = [];
  for (var i = 0; i < list.length; i++) {
    results.add(
      Container(
        width: 8,
        height: 8,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentPage == i
              ? Color.fromRGBO(255, 255, 255, 0.9)
              : Color.fromRGBO(255, 255, 255, 0.4),
        ),
      ),
    );
  }
  return results;
}
