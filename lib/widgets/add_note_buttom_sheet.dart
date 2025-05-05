import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

import 'custom_buttom.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hintText: "Title",
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              hintText: "Content",
              maxlins: 5,
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(onPressed: () {}, child: customButton()),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
