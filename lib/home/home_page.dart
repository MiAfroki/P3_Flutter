import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Milena Filmes'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            onPressed: () => Get.toNamed('/http'),
            child: Text(
              'Lista de Filmes',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ]),
      ),
    );
  }
}
