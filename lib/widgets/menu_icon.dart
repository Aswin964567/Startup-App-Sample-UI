import 'package:flutter/material.dart';


class MenuIcon extends StatelessWidget {
  const MenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildLine(20), _buildLine(15), _buildLine(10)],
      ),
    );
  }

  Widget _buildLine(double width) {
    // var width;
    return Container(
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(50)),
      height: 2.5,
      width: width, // Adjust the width as needed
      margin: const EdgeInsets.symmetric(vertical: 2),
    );
  }
}
