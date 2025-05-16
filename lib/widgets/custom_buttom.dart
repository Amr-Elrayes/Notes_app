import 'package:flutter/material.dart';

import '../constants.dart';

class customButton extends StatelessWidget {
  const customButton({super.key, this.onTap});
  final  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: kPrimaryColor),
        child: Center(
          child: Text(
            "Add",
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
