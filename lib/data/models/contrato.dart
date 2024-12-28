import 'dart:convert';

import 'package:trabalho3/data/enums/tipo_intervalo.dart';

class Contrato {
  final String id;
  final DateTime dataInicio;
  final DateTime dataFim;
  final int diaPagamento;
  final TipoIntervalo intervaloPagamento;
  final int? mesPagamento;

  Contrato({
    required this.id,
    required this.dataInicio,
    required this.dataFim,
    required this.diaPagamento,
    required this.intervaloPagamento,
    this.mesPagamento,
  }) : assert(intervaloPagamento != TipoIntervalo.anual || mesPagamento != null,
            'O mês de pagamento deve ser fornecido para o intervalo anual.');

  Contrato copyWith({
    String? id,
    DateTime? dataInicio,
    DateTime? dataFim,
    int? diaPagamento,
    TipoIntervalo? intervaloPagamento,
    int? mesPagamento,
  }) {
    return Contrato(
      id: id ?? this.id,
      dataInicio: dataInicio ?? this.dataInicio,
      dataFim: dataFim ?? this.dataFim,
      diaPagamento: diaPagamento ?? this.diaPagamento,
      intervaloPagamento: intervaloPagamento ?? this.intervaloPagamento,
      mesPagamento: mesPagamento ?? this.mesPagamento,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'dataInicio': dataInicio.millisecondsSinceEpoch,
      'dataFim': dataFim.millisecondsSinceEpoch,
      'diaPagamento': diaPagamento,
      'intervaloPagamento': intervaloPagamento.name,
      'mesPagamento': mesPagamento,
    };
  }

  factory Contrato.fromMap(Map<String, dynamic> map) {
    return Contrato(
      id: map['id'] as String,
      dataInicio: DateTime.fromMillisecondsSinceEpoch(map['dataInicio'] as int),
      dataFim: DateTime.fromMillisecondsSinceEpoch(map['dataFim'] as int),
      diaPagamento: map['diaPagamento'] as int,
      intervaloPagamento:
          TipoIntervaloExtension.byName(map['intervaloPagamento']),
      mesPagamento:
          map['mesPagamento'] != null ? map['mesPagamento'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Contrato.fromJson(String source) =>
      Contrato.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Contrato(id: $id, dataInicio: $dataInicio, dataFim: $dataFim, diaPagamento: $diaPagamento, intervaloPagamento: $intervaloPagamento, mesPagamento: $mesPagamento)';
  }

  @override
  bool operator ==(covariant Contrato other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.dataInicio == dataInicio &&
        other.dataFim == dataFim &&
        other.diaPagamento == diaPagamento &&
        other.intervaloPagamento == intervaloPagamento &&
        other.mesPagamento == mesPagamento;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        dataInicio.hashCode ^
        dataFim.hashCode ^
        diaPagamento.hashCode ^
        intervaloPagamento.hashCode ^
        mesPagamento.hashCode;
  }
}
