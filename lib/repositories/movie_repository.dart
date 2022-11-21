import 'dart:convert';
import 'dart:async';
import 'package:dart_tutorial/movies/movie.dart';
import 'package:http/http.dart' as http;

//URL
const urlGetMovies = 'https://reactnative.dev/movies.json';

//fetchMovie: lay du lieu
Future<List<Movie>> fetchMovies() async {
  List<Movie> movies = [];
  try {
    final response = await http.get(Uri.parse(urlGetMovies));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      movies =
          (json['movies'] as List).map((item) => Movie.fromJson(item)).toList();
    }
    return movies;
  } on Exception catch (e) {
    throw Exception('Failed to fetch Films: ${e.toString()}');
  }
}
