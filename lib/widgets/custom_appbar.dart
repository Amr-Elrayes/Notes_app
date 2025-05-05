import 'package:flutter/material.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.icon});
  final String title;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            decoration: TextDecoration.none,
            fontSize: 23,
            color: Colors.white,
          ),
        ),
        Spacer(),
        icon,
      ],
    );
  }
}
