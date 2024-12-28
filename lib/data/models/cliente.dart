import 'dart:convert';

import 'package:trabalho3/data/models/contato.dart';

class Cliente {
  final String nome;
  final String cPF;
  final Contato contato;
  final String dataNascimento;
  Cliente({
    required this.nome,
    required this.cPF,
    required this.contato,
    required this.dataNascimento,
  });

  Cliente copyWith({
    String? nome,
    String? cPF,
    Contato? contato,
    String? dataNascimento,
  }) {
    return Cliente(
      nome: nome ?? this.nome,
      cPF: cPF ?? this.cPF,
      contato: contato ?? this.contato,
      dataNascimento: dataNascimento ?? this.dataNascimento,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'cPF': cPF,
      'contato': contato.toMap(),
      'dataNascimento': dataNascimento,
    };
  }

  factory Cliente.fromMap(Map<String, dynamic> map) {
    return Cliente(
      nome: map['nome'] as String,
      cPF: map['cPF'] as String,
      contato: Contato.fromMap(map['contato'] as Map<String, dynamic>),
      dataNascimento: map['dataNascimento'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cliente.fromJson(String source) =>
      Cliente.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Cliente(nome: $nome, cPF: $cPF, contato: $contato, dataNascimento: $dataNascimento)';
  }

  @override
  bool operator ==(covariant Cliente other) {
    if (identical(this, other)) return true;

    return other.nome == nome &&
        other.cPF == cPF &&
        other.contato == contato &&
        other.dataNascimento == dataNascimento;
  }

  @override
  int get hashCode {
    return nome.hashCode ^
        cPF.hashCode ^
        contato.hashCode ^
        dataNascimento.hashCode;
  }
}
