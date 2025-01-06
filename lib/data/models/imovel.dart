import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:trabalho3/data/models/comodo.dart';
import 'package:trabalho3/data/models/contrato.dart';
import 'package:trabalho3/data/models/endereco.dart';

class Imovel {
  final int id;
  final String nome;
  final String descricao;
  final Endereco endereco;
  final List<Contrato> contratos;
  final List<Comodo> comodos;

  Imovel({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.endereco,
    required this.contratos,
    required this.comodos,
  });

  Imovel copyWith({
    int? id,
    String? nome,
    String? descricao,
    Endereco? endereco,
    List<Contrato>? contratos,
    List<Comodo>? comodos,
  }) {
    return Imovel(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      endereco: endereco ?? this.endereco,
      contratos: contratos ?? this.contratos,
      comodos: comodos ?? this.comodos,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'descricao': descricao,
      'endereco': endereco.toMap(),
      'contratos': contratos.map((x) => x.toMap()).toList(),
      'comodos': comodos.map((x) => x.toMap()).toList(),
    };
  }

  factory Imovel.fromMap(Map<String, dynamic> map) {
    return Imovel(
      id: map['id'] as int,
      nome: map['nome'] as String,
      descricao: map['descricao'] as String,
      endereco: Endereco.fromMap(map['endereco'] as Map<String, dynamic>),
      contratos: List<Contrato>.from(
        (map['contratos'] as List<int>).map<Contrato>(
          (x) => Contrato.fromMap(x as Map<String, dynamic>),
        ),
      ),
      comodos: List<Comodo>.from(
        (map['comodos'] as List<int>).map<Comodo>(
          (x) => Comodo.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Imovel.fromJson(String source) =>
      Imovel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Imovel(id: $id, nome: $nome, descricao: $descricao, endereco: $endereco, contratos: $contratos, comodos: $comodos)';
  }

  @override
  bool operator ==(covariant Imovel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.nome == nome &&
        other.descricao == descricao &&
        other.endereco == endereco &&
        listEquals(other.contratos, contratos) &&
        listEquals(other.comodos, comodos);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nome.hashCode ^
        descricao.hashCode ^
        endereco.hashCode ^
        contratos.hashCode ^
        comodos.hashCode;
  }
}
