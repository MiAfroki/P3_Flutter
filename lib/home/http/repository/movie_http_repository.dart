import 'dart:convert';

import 'package:milena_filmes/model/movie_model.dart';
import 'package:milena_filmes/repository/i_movie_repository.dart';
import 'package:http/http.dart' as http;

class MovieHttpRepository implements IMovieRepository {
  @override
  Future<List<MovieModel>> findAllMovies() async {
    final response =
        await http.get('https://sujeitoprogramador.com/r-api/?api=filmes');
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map<MovieModel>((resp) => MovieModel.fromMap(resp))
        .toList();
  }
}
