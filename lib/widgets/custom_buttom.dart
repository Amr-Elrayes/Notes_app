import 'package:flutter/material.dart';

import '../constants.dart';

class customButton extends StatelessWidget {
  const customButton({super.key, this.onTap, this.isLoadiung = false});
  final void Function()? onTap;
  final bool isLoadiung;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoadiung ? null : onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: kPrimaryColor),
        child: Center(
          child: isLoadiung
              ? SizedBox(
                  height: 26,
                  width: 26,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
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
