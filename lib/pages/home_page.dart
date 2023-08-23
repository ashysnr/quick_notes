import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_notes/components/folder_tile.dart';
import 'package:quick_notes/components/notes_tile.dart';
import 'package:quick_notes/models/folders_model.dart';
import 'package:quick_notes/utils/colors.dart';
import '../models/note_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // notes list
  List notesList = [
    Notes(
      noteTitle: "Title 1",
      noteContent: "Content 1",
    ),
    Notes(
      noteTitle: "Title 2",
      noteContent: "Content 2",
    ),
    Notes(
      noteTitle: "Title 3",
      noteContent: "Content 3",
    ),
  ];

  // folder list
  List folderList = [
    Folders(totalNotes: 7, folderTitle: "Achievement"),
    Folders(totalNotes: 2, folderTitle: "I & You Space"),
    Folders(totalNotes: 8, folderTitle: "Self Development"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 70.00, left: 24.00, right: 24.00, bottom: 24.00),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 15.00,
                  color: Colors.grey.shade200,
                  offset: const Offset(0.0, 5.0),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // name + title + avatar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Ash!",
                          style: GoogleFonts.inter(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500,
                              fontSize: 18.00),
                        ),
                        Text(
                          "My Notes",
                          style: GoogleFonts.inter(
                            color: Colors.grey[900],
                            fontSize: 32.00,
                          ),
                        ),
                      ],
                    ),
                    ClipRect(
                      child: Image.asset(
                        'images/man.png',
                        height: 48,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24.00),

                // search bar
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search your notes",
                    hintStyle: GoogleFonts.inter(
                      fontSize: 18.00,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800],
                    ),
                    fillColor: const Color(0xFFFFE4B0),
                    contentPadding: const EdgeInsets.all(16.00),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryYellow),
                      borderRadius: BorderRadius.circular(16.00),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryYellow),
                      borderRadius: BorderRadius.circular(16.00),
                    ),
                    suffixIcon: Icon(
                      Icons.search_rounded,
                      size: 32.00,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // recent + note tiles
          Expanded(
            child: Column(
              children: [
                // Recent Title
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent",
                        style: GoogleFonts.inter(
                          fontSize: 18.00,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "See all",
                        style: GoogleFonts.inter(
                            fontSize: 16.00, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),

                // Recent Notes
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: notesList.length,
                      itemBuilder: (context, index) => NotesTile(
                        notes: notesList[index],
                      ),
                    ),
                  ),
                ),

                // Folder Title
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Folder",
                        style: GoogleFonts.inter(
                          fontSize: 18.00,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.add_box_outlined,
                        color: Colors.grey[700],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          // folder + folder list
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 24.0, right: 24.00),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: folderList.length,
                itemBuilder: (context, index) => FolderTile(
                  folders: folderList[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
