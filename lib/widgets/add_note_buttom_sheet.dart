import 'package:flutter/material.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'add_note_form.dart';

class AddNoteButtomSheet extends StatefulWidget {
  const AddNoteButtomSheet({super.key});

  @override
  State<AddNoteButtomSheet> createState() => _AddNoteButtomSheetState();
}

class _AddNoteButtomSheetState extends State<AddNoteButtomSheet> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if(state is AddNoteFailuer)
            {
              print("failed ${state.errMessage}");
            }
            if(state is AddNoteSuccess)
            {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD
            (
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: AddNoteForm()
            );
          },
        ),
      ),
    );
  }
}
