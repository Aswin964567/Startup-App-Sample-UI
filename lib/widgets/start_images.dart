import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageCollection extends StatelessWidget {
  const ImageCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/rocket2.png',
                width: 482,
                height: 483,
              ),
              Positioned(
                left: 194,
                top: 28,
                child: Image.asset(
                  'assets/moon_cloud.png',
                  width: 175,
                  height: 175,
                ),
              ),
              Positioned(
                top: 127,
                left: -10,
                child: Image.asset(
                  'assets/cloud_full.png',
                  width: 190,
                  height: 190,
                ),
              ),
              Positioned(
                left: 195,
                top: 357,
                child: Image.asset(
                  'assets/tail.png',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
