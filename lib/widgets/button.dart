import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:startup/screens/screen_one.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ScreenOne(),),);
        },
        splashColor: Colors.red,
        child: Container(
            width: 340,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 3),
                ),
              ],
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffff7070), Color(0xffff4f4f)],
              ),
            ),
            child: const Center(
              child: Text("Get Started",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
            )),
      ),
    );
  }
}
