import 'package:milena_filmes/home/http/http_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/movie_model.dart';

class HttpPage extends GetView<HttpController> {
  String titulo = 'Listagem';
  String txtErro = "Ocorreu um erro de leitura";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
            final MovieModel item = state[index];
            return ListTile(
              title: Text(item.nome),
            );
          },
        );
      }, onError: (error) {
        return Center(child: Text(txtErro));
      }),
    );
  }
}
