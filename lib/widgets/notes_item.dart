import 'package:flutter/material.dart';
import 'package:notes_app/Cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return EditNoteView();
            }),
          );
        },
        child: Material(
          borderRadius: BorderRadius.circular(20),
          color: Color(note.color),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 17, vertical: 18),
                title: Text(
                  note.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    note.subtitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 20),
                child: Text(
                  DateFormat('EEE, MMM d - kk:mm')
                      .format(DateTime.parse(note.date)),
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7), fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
