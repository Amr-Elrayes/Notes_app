import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26, right: 26, top: 40, bottom: 20),
      child: Column(
        children: [
          CustomAppbar(),
          SizedBox(
            height: 2,
          ),
          Expanded(child: NotesListview()),
        ],
      ),
    );
  }
}
