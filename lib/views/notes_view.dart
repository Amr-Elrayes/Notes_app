import 'package:flutter/material.dart';
import 'package:notes_app/Cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/add_note_buttom_sheet.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context)
        .fetchAllNotes(); // fetch notes when screen loads
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                context: context,
                builder: (context) {
                  return AddNoteButtomSheet();
                });
          },
          backgroundColor: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: NotesViewBody());
  }
}
