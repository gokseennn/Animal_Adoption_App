class Ad {
  final String name;
  final String location;

  Ad({
    required this.name,
    required this.location,
  });
  factory Ad.fromJson(Map<String, dynamic> json) {
    return Ad(
      name: json['Name'],
      location: json['Location'],
    );
  }
}
