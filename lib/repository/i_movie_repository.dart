import '../model/movie_model.dart';

abstract class IMovieRepository {
  Future<List<MovieModel>> findAllMovies();
}
