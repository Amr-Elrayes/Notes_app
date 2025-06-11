import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
    final void Function()? onPressed;

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
        CustomIcon
        (onPressed: onPressed,
          icon: icon),
      ],
    );
  }
}
