import 'package:bloc_pattern/src/models/item_model.dart';
import 'package:bloc_pattern/src/resoures/movie_api_provider.dart';
import 'dart:async';

class Repository {
  final movieApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => movieApiProvider.fetchMovieList();
}