import 'dart:ffi';
import 'book.dart';
import 'package:flutter/material.dart';

class FeaturedPlants extends StatelessWidget {
  final book = [
    "assets/image/1.jpg",
    "assets/image/B.jpg",
    "assets/image/C.jpg",
    "assets/image/OIP.jpg",
    "assets/image/R.jpg",
  ];

  final double kDefaultPadding = 20.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return FeaturePlantCard(
          image: book[index],
          press: () {},
        );
      },
      itemCount: book.length,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(width: kDefaultPadding);
      },
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function press;
  final double kDefaultPadding = 20.0;
  final int size = 20;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
          // left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size * 7,
        height: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
