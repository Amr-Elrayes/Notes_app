import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText,  this.maxlins = 1});
  final String hintText;
  final int maxlins;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColor,
      maxLines: maxlins,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: KprimaryColor.withOpacity(0.8)),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(
          KprimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
