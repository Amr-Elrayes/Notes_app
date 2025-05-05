import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 17, vertical: 18),
                title: Text(
                  'Flutter Tips',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Build good apps with tharwat Samy ',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 18),
                  ),
                ),
                trailing: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 32,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 20),
                child: Text(
                  'May 21 , 2025',
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
