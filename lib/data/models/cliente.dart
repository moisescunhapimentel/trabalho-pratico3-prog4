import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:trabalho3/data/models/contato.dart';
import 'package:trabalho3/data/models/contrato.dart';

class Cliente {
  final int id;
  final String nome;
  final String cPF;
  final Contato contato;
  final DateTime dataNascimento;
  final List<Contrato> contratos;

  Cliente({
    required this.id,
    required this.nome,
    required this.cPF,
    required this.contato,
    required this.dataNascimento,
    required this.contratos,
  });

  Cliente copyWith({
    int? id,
    String? nome,
    String? cPF,
    Contato? contato,
    DateTime? dataNascimento,
    List<Contrato>? contratos,
  }) {
    return Cliente(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      cPF: cPF ?? this.cPF,
      contato: contato ?? this.contato,
      dataNascimento: dataNascimento ?? this.dataNascimento,
      contratos: contratos ?? this.contratos,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'cPF': cPF,
      'contato': contato.toMap(),
      'dataNascimento': dataNascimento.millisecondsSinceEpoch,
      'contratos': contratos.map((x) => x.toMap()).toList(),
    };
  }

  factory Cliente.fromMap(Map<String, dynamic> map) {
    return Cliente(
      id: map['id'] as int,
      nome: map['nome'] as String,
      cPF: map['cPF'] as String,
      contato: Contato.fromMap(map['contato'] as Map<String, dynamic>),
      dataNascimento:
          DateTime.fromMillisecondsSinceEpoch(map['dataNascimento'] as int),
      contratos: List<Contrato>.from(
        (map['contratos'] as List<int>).map<Contrato>(
          (x) => Contrato.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Cliente.fromJson(String source) =>
      Cliente.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Cliente(id: $id, nome: $nome, cPF: $cPF, contato: $contato, dataNascimento: $dataNascimento, contratos: $contratos)';
  }

  @override
  bool operator ==(covariant Cliente other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.nome == nome &&
        other.cPF == cPF &&
        other.contato == contato &&
        other.dataNascimento == dataNascimento &&
        listEquals(other.contratos, contratos);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nome.hashCode ^
        cPF.hashCode ^
        contato.hashCode ^
        dataNascimento.hashCode ^
        contratos.hashCode;
  }
}
