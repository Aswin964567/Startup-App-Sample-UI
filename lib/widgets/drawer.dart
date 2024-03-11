import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40), bottomRight: Radius.circular(40)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xffff7070), Color(0xffff4f4f)],
        ),
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 59,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 24),
              Text("Menu",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
            ],
          ),
          SizedBox(
            height: 37,
          ),
          ItemName(name: 'Home'),
          ItemName(name: 'Mentors'),
          ItemName(name: 'Startup Courses'),
          ItemName(name: "Trainings"),
          ItemName(name: "Pricing"),
          ItemName(name: "About Us"),
          ItemName(name: "FAQs"),
        ],
      ),
    );
  }
}

class ItemName extends StatelessWidget {
  const ItemName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 24,
            ),
            Text(
              name,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
