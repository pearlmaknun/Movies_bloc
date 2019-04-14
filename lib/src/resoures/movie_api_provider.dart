import 'dart:convert';
import 'package:http/http.dart';
import 'dart:async';
import 'package:bloc_pattern/src/models/item_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'a3fa984a8577dd89f886d67fcfd1daaf';

  Future<ItemModel> fetchMovieList() async {
    print("entered");
    final response = await client
    .get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
    print(response.body.toString());
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}