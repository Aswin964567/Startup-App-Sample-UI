import 'package:flutter/cupertino.dart';
import 'package:startup/widgets/course_box.dart';

class CompletedRow extends StatelessWidget {
  const CompletedRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 25),
              CourseBox(
                img: 'assets/Billy1.png',
                img2: 'assets/play3.png',
                img3: 'assets/person4.png',
                text: "Growing Startup without\nSales Team",
                name: 'Kunal Shah',
                color1: Color(0xff7ca4e8),
                color2: Color(0xff517ccd),
              ),
              SizedBox(width: 20),
              CourseBox(
                img: 'assets/Billy3.png',
                img2: 'assets/play4.png',
                img3: 'assets/person4.png',
                color1: Color(0xff605780),
                color2: Color(0xff909ab8),
                text: "Find Powerful Tips for\nWealth & Success",
                name: 'Kunal Shah',
              ),
              SizedBox(width: 24),
            ],
          ),
          SizedBox(height: 2),
        ],
      ),
    );
  }
}
