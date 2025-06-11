import 'package:flutter/material.dart';

void ShowSnackBar(BuildContext context, String message, Color bgcolor , Color txtcolor) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: bgcolor,
      content: Text(
        message,
        style: TextStyle(
          color: txtcolor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
