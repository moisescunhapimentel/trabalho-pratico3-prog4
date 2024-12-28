import 'dart:convert';

class Intervalo {
  final DateTime dataInicio;
  final DateTime dataFim;

  Intervalo({
    required this.dataInicio,
    required this.dataFim,
  }) : assert(dataInicio.isBefore(dataFim),
            '[dataInicio] deve ser menor que [dataFim]');

  Intervalo copyWith({
    DateTime? dataInicio,
    DateTime? dataFim,
  }) {
    return Intervalo(
      dataInicio: dataInicio ?? this.dataInicio,
      dataFim: dataFim ?? this.dataFim,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataInicio': dataInicio.millisecondsSinceEpoch,
      'dataFim': dataFim.millisecondsSinceEpoch,
    };
  }

  factory Intervalo.fromMap(Map<String, dynamic> map) {
    return Intervalo(
      dataInicio: DateTime.fromMillisecondsSinceEpoch(map['dataInicio'] as int),
      dataFim: DateTime.fromMillisecondsSinceEpoch(map['dataFim'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Intervalo.fromJson(String source) =>
      Intervalo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Intervalo(dataInicio: $dataInicio, dataFim: $dataFim)';

  @override
  bool operator ==(covariant Intervalo other) {
    if (identical(this, other)) return true;

    return other.dataInicio == dataInicio && other.dataFim == dataFim;
  }

  @override
  int get hashCode => dataInicio.hashCode ^ dataFim.hashCode;
}
