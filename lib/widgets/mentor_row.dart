import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MentorRow extends StatelessWidget {
  const MentorRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Center(
            child: Row(
              children: [
                SizedBox(width: 25),
                _mentorBox(
                  img: 'assets/person3.png',
                  name: 'Ankur Warikoo',
                  specialty: "Founder Nearby | Mentor",
                  color1: const Color(0xff0052d4),
                  color2: const Color(0xff4364f7),
                  color3: const Color(0xff6fb1fc),
                ),
                SizedBox(
                  width: 20,
                ),
                _mentorBox(
                  img: 'assets/person2.png',
                  name: 'Kunal Shah',
                  specialty: "Founder CRED",
                  color1: Colors.black,
                  color2: Color(0xff2d2c2c),
                  color3: Color(0xff626262),
                ),
                SizedBox(
                  width: 24,
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}

class _mentorBox extends StatelessWidget {
  const _mentorBox(
      {super.key,
      required this.name,
      required this.img,
      required this.specialty,
      required this.color1,
      required this.color2,
      required this.color3});

  final String img;
  final String name;
  final String specialty;
  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 261,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [color1, color2, color3],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 12, right: 12, top: 14, bottom: 14),
            child: Image.asset(
              img,
              width: 44,
              height: 44,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 13,
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text(specialty,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white))
            ],
          )
        ],
      ),
    );
  }
}
