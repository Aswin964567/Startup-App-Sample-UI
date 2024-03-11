import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:startup/widgets/start_container.dart';
import 'package:startup/widgets/start_images.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
//         width: 414,
// height: 896,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffff7070), Color(0xffff4f4f)],
          ),
        ),
        child: const Column(children: [
          SizedBox(
            height: 24,
          ),
          ImageCollection(),
          StartContainer(),
        ]),
      ),
    );
  }
}
