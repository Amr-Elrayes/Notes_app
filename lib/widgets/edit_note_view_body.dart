import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_icon.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26, right: 26, top: 40, bottom: 20),
      child: Column(
        children: [
          CustomAppbar(
            title: "Edit Note",
            icon: CustomIcon(
              icon: Icons.check,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          CustomTextField(hintText: "Title"),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintText: "Content",
            maxlins: 5,
          )
        ],
      ),
    );
  }
}
