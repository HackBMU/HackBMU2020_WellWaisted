import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class ShopProducts extends StatefulWidget {
  Image imageData;
  ShopProducts({this.imageData});
  @override
  _ShopProductsState createState() => _ShopProductsState();
}

class _ShopProductsState extends State<ShopProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        height: 250.0,
        items: [1,2,3,4,5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.transparent
                  ),
                child: widget.imageData,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
