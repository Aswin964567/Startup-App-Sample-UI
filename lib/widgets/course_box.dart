import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CourseBox extends StatelessWidget {
  const CourseBox(
      {super.key,
      this.text = "Finding Co-Founder in\nearly days",
      this.img = 'assets/avator.png',
      this.color1 = const Color(0xffffac70),
      this.color2 = const Color(0xffff844f),
      this.img2 = 'assets/play.png',
      this.img3 = 'assets/person.png',
      this.name = "Ankur Warikoo"});

  final String text;
  final String img;
  final Color color1;
  final Color color2;
  final String img2;
  final String img3;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 270,
        height: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              color1,
              color2,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  img2,
                ),
              ],
            ),
            Positioned(
              bottom: 95,
              left: 55,
              child: Image.asset(
                img,
              ),
            ),
            Positioned(
              top: 225,
              left: 12,
              child: Row(
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              child: Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  Image.asset(img3),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
