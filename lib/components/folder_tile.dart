import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_notes/models/folders_model.dart';
import '../utils/colors.dart';

class FolderTile extends StatelessWidget {
  final Folders folders;
  const FolderTile({super.key, required this.folders});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.00),
      margin: const EdgeInsets.only(bottom: 16.00),
      width: 200.00,
      decoration: BoxDecoration(
        color: lightYellow,
        borderRadius: BorderRadius.circular(24.00),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // total notes
          Text(
            folders.totalNotes.toString() + " notes",
            style: GoogleFonts.inter(
                fontSize: 14.00,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600]),
          ),

          // space
          const SizedBox(height: 8.00),

          // title
          Text(
            folders.folderTitle,
            style: GoogleFonts.inter(
                fontSize: 18.00,
                fontWeight: FontWeight.w800,
                color: Colors.grey[900]),
          ),
        ],
      ),
    );
  }
}
