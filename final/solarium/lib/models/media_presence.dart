class MediaPresence {
  String name;
  String genre;
  String synopsis;
  int year;

  MediaPresence(
      {required this.name,
      required this.genre,
      required this.synopsis,
      required this.year});

  static List<MediaPresence> fromJson(List<dynamic>? json) {
    List<MediaPresence> _result = [];
    if (json != null) {
      _result = json.map((value) {
        return MediaPresence(
          name: value['name'] as String? ?? "",
          genre: value['genre'] as String? ?? "",
          synopsis: value['synopsis'] as String? ?? "",
          year: value['year'] as int? ?? 0,
        );
      }).toList();
    }
    return _result;
  }
}
