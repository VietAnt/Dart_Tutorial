class Movie {
  final int id;
  final String title;
  final int releaseYear;

  //1.contructor
  Movie({required this.id, required this.title, required this.releaseYear});

  //2.Covert map(json Object) to Movie Object?: Chuyen doi JSON -> OBJECT
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: int.parse(json['id']),
      title: json['title'],
      releaseYear: int.parse(json['releaseYear']),
    );
  }

  //3.toString
  @override
  String toString() => 'id: $id, title: $title, releaseYear: $releaseYear';
}
