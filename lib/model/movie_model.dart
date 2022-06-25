import 'dart:convert';

class MovieModel {
  String id;
  String nome;
  String sinopse;
  String foto;

  MovieModel({
    required this.id,
    required this.nome,
    required this.sinopse,
    required this.foto,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'sinopse': sinopse,
      'foto': foto,
    };
  }

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      sinopse: map['sinopse'] ?? '',
      foto: map['foto'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromJson(String source) =>
      MovieModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
