import 'dart:convert';

import 'package:trabalho3/data/models/endereco.dart';

class Imovel {
  final String nome;
  final String descricao;
  final Endereco endereco;
  Imovel({
    required this.nome,
    required this.descricao,
    required this.endereco,
  });

  Imovel copyWith({
    String? nome,
    String? descricao,
    Endereco? endereco,
  }) {
    return Imovel(
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      endereco: endereco ?? this.endereco,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'descricao': descricao,
      'endereco': endereco.toMap(),
    };
  }

  factory Imovel.fromMap(Map<String, dynamic> map) {
    return Imovel(
      nome: map['nome'] as String,
      descricao: map['descricao'] as String,
      endereco: Endereco.fromMap(map['endereco'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Imovel.fromJson(String source) =>
      Imovel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Imovel(nome: $nome, descricao: $descricao, endereco: $endereco)';

  @override
  bool operator ==(covariant Imovel other) {
    if (identical(this, other)) return true;

    return other.nome == nome &&
        other.descricao == descricao &&
        other.endereco == endereco;
  }

  @override
  int get hashCode => nome.hashCode ^ descricao.hashCode ^ endereco.hashCode;
}
