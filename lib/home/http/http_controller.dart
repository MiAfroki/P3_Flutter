import 'package:milena_filmes/repository/i_movie_repository.dart';
import 'package:get/get.dart';

class HttpController extends GetxController with StateMixin {
  final IMovieRepository _httpRepository;

  HttpController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  void findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findAllMovies();
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro na busca os filmes!'));
    }
  }
}
