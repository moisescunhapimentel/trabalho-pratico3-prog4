// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:trabalho3/data/enums/tipo_intervalo.dart';
import 'package:trabalho3/data/models/pagamento.dart';

class Contrato {
  final int id;
  final DateTime dataInicio;
  final DateTime dataFim;
  final int clienteId;
  final int imovelId;
  final double valor;
  final TipoIntervalo intervaloPagamento;
  final List<Pagamento> pagamentos;

  Contrato({
    required this.id,
    required this.dataInicio,
    required this.dataFim,
    required this.clienteId,
    required this.imovelId,
    required this.valor,
    required this.intervaloPagamento,
    required this.pagamentos,
  });

  Contrato copyWith({
    int? id,
    DateTime? dataInicio,
    DateTime? dataFim,
    int? clienteId,
    int? imovelId,
    double? valor,
    TipoIntervalo? intervaloPagamento,
    List<Pagamento>? pagamentos,
  }) {
    return Contrato(
      id: id ?? this.id,
      dataInicio: dataInicio ?? this.dataInicio,
      dataFim: dataFim ?? this.dataFim,
      clienteId: clienteId ?? this.clienteId,
      imovelId: imovelId ?? this.imovelId,
      valor: valor ?? this.valor,
      intervaloPagamento: intervaloPagamento ?? this.intervaloPagamento,
      pagamentos: pagamentos ?? this.pagamentos,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'dataInicio': dataInicio.millisecondsSinceEpoch,
      'dataFim': dataFim.millisecondsSinceEpoch,
      'clienteId': clienteId,
      'imovelId': imovelId,
      'valor': valor,
      'intervaloPagamento': intervaloPagamento.name,
      'pagamentos': pagamentos.map((x) => x.toMap()).toList(),
    };
  }

  factory Contrato.fromMap(Map<String, dynamic> map) {
    return Contrato(
      id: map['id'] as int,
      dataInicio: DateTime.fromMillisecondsSinceEpoch(map['dataInicio'] as int),
      dataFim: DateTime.fromMillisecondsSinceEpoch(map['dataFim'] as int),
      clienteId: map['clienteId'] as int,
      imovelId: map['imovelId'] as int,
      valor: map['valor'] as double,
      intervaloPagamento:
          TipoIntervaloExtension.byName(map['intervaloPagamento']),
      pagamentos: List<Pagamento>.from(
        (map['pagamentos'] as List<int>).map<Pagamento>(
          (x) => Pagamento.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Contrato.fromJson(String source) =>
      Contrato.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Contrato(id: $id, dataInicio: $dataInicio, dataFim: $dataFim, clienteId: $clienteId, imovelId: $imovelId, valor: $valor, intervaloPagamento: $intervaloPagamento, pagamentos: $pagamentos)';
  }

  @override
  bool operator ==(covariant Contrato other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.dataInicio == dataInicio &&
        other.dataFim == dataFim &&
        other.clienteId == clienteId &&
        other.imovelId == imovelId &&
        other.valor == valor &&
        other.intervaloPagamento == intervaloPagamento &&
        listEquals(other.pagamentos, pagamentos);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        dataInicio.hashCode ^
        dataFim.hashCode ^
        clienteId.hashCode ^
        imovelId.hashCode ^
        valor.hashCode ^
        intervaloPagamento.hashCode ^
        pagamentos.hashCode;
  }
}
