import 'package:flutter/material.dart';
import 'package:startup/widgets/course_box.dart';

class CourseRow extends StatelessWidget {
  const CourseRow({super.key});



  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 25),
              CourseBox(),
              SizedBox(width: 20),
              CourseBox(
                img: 'assets/test.png',
                img2: 'assets/play2.png',
                color1: Color(0xff02aab0),
                color2: Color(0xff00cdac),
                text: "Getting first seed\nfunding checklist",
              ),
              SizedBox(width: 24),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
