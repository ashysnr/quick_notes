import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_notes/utils/colors.dart';
import '../models/note_model.dart';

class NotesTile extends StatelessWidget {
  final Notes notes;

  const NotesTile({
    super.key,
    required this.notes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.00),
      margin: const EdgeInsets.only(right: 16.00),
      width: 200.00,
      decoration: BoxDecoration(
        color: lightYellow,
        borderRadius: BorderRadius.circular(24.00),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          Text(
            notes.noteTitle,
            style: GoogleFonts.inter(
                fontSize: 18.00,
                fontWeight: FontWeight.w600,
                color: Colors.grey[800]),
          ),

          // space
          const SizedBox(height: 8.00),

          // content
          Text(
            notes.noteContent,
            style: GoogleFonts.inter(
                fontSize: 16.00,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }
}
