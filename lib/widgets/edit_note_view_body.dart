import 'package:flutter/material.dart';
import 'package:notes_app/Cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/helper/show_Snakbar.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../helper/edit_note_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? subtitle, title;
  int? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26, right: 26, top: 40, bottom: 20),
      child: Column(
        children: [
          CustomAppbar(
            onPressed: () {
              final isTitleChanged =
                  title != null && title != widget.note.title;
              final isSubtitleChanged =
                  subtitle != null && subtitle != widget.note.subtitle;
              final isColorChanged = color != widget.note.color;

              if (!isTitleChanged && !isSubtitleChanged && !isColorChanged) {
                ShowSnackBar(context, "No Changes on the Note", Colors.white,
                    Colors.black);
                Navigator.pop(context);
                return;
              }
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.color = color ?? widget.note.color;
              widget.note.save();

              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);

              ShowSnackBar(context, 'Note Edited Successfully',
                  const Color.fromARGB(255, 176, 158, 1), Colors.white);
            },
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 40,
          ),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.note.title),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (value) {
              subtitle = value;
            },
            hintText: widget.note.subtitle,
            maxlins: 5,
          ),
          SizedBox(
            height: 25,
          ),
          EditNoteColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
