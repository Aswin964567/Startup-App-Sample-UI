import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:startup/screens/screen_two.dart';
import 'package:startup/widgets/course_row.dart';
import 'package:startup/widgets/drawer.dart';
import 'package:startup/widgets/mentor_row.dart';
import 'package:startup/widgets/menu_icon.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 67,
          ),
          Row(
            children: [
              const SizedBox(
                width: 24,
              ),
              Builder(builder: (context) => MenuIcon()),
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Hi, Akash 👋",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2A3447)),
              ),
              const SizedBox(
                width: 145,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => ScreenTwo()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/profile.gif",
                    width: 50,
                    height: 50,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 45,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: const Text(
              "Find your favorite startup course here",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF2A3447)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 24,
              ),
              Container(
                width: 305,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/feather_search.png",
                      width: 50,
                      height: 50,
                    ),
                    Text(
                      "Search course",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF707A8D).withOpacity(0.5),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffff7070), Color(0xffff4f4f)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Image.asset(
                  "assets/feather_sliders.png",
                  width: 50,
                  height: 50,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Courses",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2A3447)),
                ),
                Text("View All",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFF5050)))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CourseRow(),
          const SizedBox(
            height: 32,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                "Courses by Mentors",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2A3447)),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const MentorRow()
        ],
      ),
    );
  }
}
