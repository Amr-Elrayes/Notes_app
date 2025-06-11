import 'package:flutter/material.dart';
import 'package:notes_app/Cubits/notes_cubit/notes_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'notes_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return NoteItem(
              key: ValueKey(notes[index].key),
              note: notes[index],
            );
          },
        );
      },
    );
  }
}
