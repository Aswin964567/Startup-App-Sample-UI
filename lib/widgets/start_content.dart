import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:startup/widgets/button.dart';

class StartContent extends StatelessWidget {
  const StartContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Launch and Grow \n     your startup",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w800,
              color: Color(0xFF2A3447),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "The average company forecasts a growth\n\n 178% in revenues for their first year, 100%\n\n           for second, and 71% for third.",
            // style: GoogleFonts.montserrat(
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF707A8D),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          StartButton()
        ],
      ),
    );
  }
}
