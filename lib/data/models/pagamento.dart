import 'dart:convert';

import 'package:trabalho3/data/enums/tipo_pagamento.dart';

class Pagamento {
  final int id;
  final double valor;
  final TipoPagamento tipoPagamento;

  Pagamento({
    required this.id,
    required this.valor,
    required this.tipoPagamento,
  });

  Pagamento copyWith({
    int? id,
    double? valor,
    TipoPagamento? tipoPagamento,
  }) {
    return Pagamento(
      id: id ?? this.id,
      valor: valor ?? this.valor,
      tipoPagamento: tipoPagamento ?? this.tipoPagamento,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'valor': valor,
      'tipoPagamento': tipoPagamento.name,
    };
  }

  factory Pagamento.fromMap(Map<String, dynamic> map) {
    return Pagamento(
      id: map['id'] as int,
      valor: map['valor'] as double,
      tipoPagamento: TipoPagamentoExtension.byName(map['tipoPagamento']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Pagamento.fromJson(String source) =>
      Pagamento.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Pagamento(id: $id, valor: $valor, tipoPagamento: $tipoPagamento)';
  }

  @override
  bool operator ==(covariant Pagamento other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.valor == valor &&
        other.tipoPagamento == tipoPagamento;
  }

  @override
  int get hashCode {
    return id.hashCode ^ valor.hashCode ^ tipoPagamento.hashCode;
  }
}
