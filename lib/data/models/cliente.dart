import 'dart:convert';

import 'package:trabalho3/data/models/contato.dart';

class Cliente {
  final int id;
  final String nome;
  final String cPF;
  final Contato contato;
  final DateTime dataNascimento;

  Cliente({
    required this.id,
    required this.nome,
    required this.cPF,
    required this.contato,
    required this.dataNascimento,
  });

  Cliente copyWith({
    int? id,
    String? nome,
    String? cPF,
    Contato? contato,
    DateTime? dataNascimento,
  }) {
    return Cliente(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      cPF: cPF ?? this.cPF,
      contato: contato ?? this.contato,
      dataNascimento: dataNascimento ?? this.dataNascimento,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'cPF': cPF,
      'contato': contato.toMap(),
      'dataNascimento': dataNascimento,
    };
  }

  factory Cliente.fromMap(Map<String, dynamic> map) {
    return Cliente(
      id: map['id'] as int,
      nome: map['nome'] as String,
      cPF: map['cPF'] as String,
      contato: Contato.fromMap(map['contato'] as Map<String, dynamic>),
      dataNascimento: DateTime.parse(map['dataNascimento']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Cliente.fromJson(String source) =>
      Cliente.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Cliente(id: $id, nome: $nome, cPF: $cPF, contato: $contato, dataNascimento: $dataNascimento)';
  }

  @override
  bool operator ==(covariant Cliente other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.nome == nome &&
        other.cPF == cPF &&
        other.contato == contato &&
        other.dataNascimento == dataNascimento;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nome.hashCode ^
        cPF.hashCode ^
        contato.hashCode ^
        dataNascimento.hashCode;
  }
}
