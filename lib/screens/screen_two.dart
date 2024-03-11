import 'package:flutter/material.dart';
import 'package:startup/widgets/completed_row.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            // alignment: Alignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        Color(0xff2a3447),
                        BlendMode.dstATop,
                      ),
                      child: Image.asset(
                        'assets/bg.png',
                        width: 414,
                        height: 256,
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    )
                  ],
                ),
              ),
              const Positioned(
                top: 50,
                left: 20,
                child: const BackButton(),
              ),
              Positioned(
                top: 120,
                left: 88,
                child: CircleAvatar(
                  radius: 110, //
                  backgroundColor: Colors.transparent,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/profile2.gif',
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            "Akash Solanki",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            "@antivirusakash",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              width: 414,
              height: 1,
              decoration: const BoxDecoration(color: Color(0xffdee8fb))),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Completed Courses",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2A3447)),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFF5050),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CompletedRow(),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/feather_arrow-left.png')),
        const SizedBox(
          width: 10,
        ),
        const Text("Profile",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white))
      ],
    );
  }
}
