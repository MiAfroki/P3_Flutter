import 'package:milena_filmes/home/http/http_controller.dart';
import 'package:milena_filmes/home/http/repository/movie_http_repository.dart';
import 'package:milena_filmes/repository/i_movie_repository.dart';
import 'package:get/get.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IMovieRepository>(MovieHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
