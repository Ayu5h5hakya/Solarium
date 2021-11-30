class Event {
  String name;
  String launchDate;
  String description;

  Event(
      {required this.name,
      required this.launchDate,
      required this.description});

  static List<Event> fromJson(List<dynamic>? json) {
    List<Event> _result = [];
    if (json != null) {
      _result = json.map((value) {
        return Event(
          name: value['name'] as String? ?? "",
          launchDate: value['launchDate'] as String? ?? "",
          description: value['description'] as String? ?? "",
        );
      }).toList();
    }
    return _result;
  }
}
