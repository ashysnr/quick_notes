class Notes {
  final String noteTitle;
  final String noteContent;

  Notes({
    required this.noteTitle,
    required this.noteContent,
  });

  String get _noteTitle => noteTitle;
  String get _noteContent => noteContent;
}
