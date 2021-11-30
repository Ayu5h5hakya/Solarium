class Moon {
  String name;
  String imageUrl;
  Moon({required this.name, required this.imageUrl});

  static List<Moon> fromJson(List<dynamic>? json) {
    List<Moon> _result = [];
    if (json != null) {
      _result = json.map((value) {
        return Moon(
          name: value['name'] as String? ?? "",
          imageUrl: value['imageUrl'] as String? ?? "",
        );
      }).toList();
    }
    return _result;
  }
}
