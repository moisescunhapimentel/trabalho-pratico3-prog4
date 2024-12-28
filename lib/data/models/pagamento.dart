import 'dart:convert';

import 'package:trabalho3/data/enums/tipo_pagamento.dart';

class Pagamento {
  final double valor;
  final TipoPagamento tipoPagamento;

  Pagamento({
    required this.valor,
    required this.tipoPagamento,
  });

  Pagamento copyWith({
    double? valor,
    TipoPagamento? tipoPagamento,
  }) {
    return Pagamento(
      valor: valor ?? this.valor,
      tipoPagamento: tipoPagamento ?? this.tipoPagamento,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'valor': valor,
      'tipoPagamento': tipoPagamento.name,
    };
  }

  factory Pagamento.fromMap(Map<String, dynamic> map) {
    return Pagamento(
      valor: map['valor'] as double,
      tipoPagamento: TipoPagamentoExtension.byName(map['tipoPagamento']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Pagamento.fromJson(String source) =>
      Pagamento.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Pagamento(valor: $valor, tipoPagamento: $tipoPagamento)';

  @override
  bool operator ==(covariant Pagamento other) {
    if (identical(this, other)) return true;

    return other.valor == valor && other.tipoPagamento == tipoPagamento;
  }

  @override
  int get hashCode => valor.hashCode ^ tipoPagamento.hashCode;
}
