import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontFamily: 'Poppins',
            decoration: TextDecoration.none,
            fontSize: 23,
            color: Colors.white,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
