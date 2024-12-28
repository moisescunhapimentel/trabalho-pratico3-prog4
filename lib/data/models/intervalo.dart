import 'dart:convert';

class Intervalo {
  final int id;
  final DateTime dataInicio;
  final DateTime dataFim;

  Intervalo({
    required this.id,
    required this.dataInicio,
    required this.dataFim,
  });

  Intervalo copyWith({
    int? id,
    DateTime? dataInicio,
    DateTime? dataFim,
  }) {
    return Intervalo(
      id: id ?? this.id,
      dataInicio: dataInicio ?? this.dataInicio,
      dataFim: dataFim ?? this.dataFim,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'dataInicio': dataInicio.millisecondsSinceEpoch,
      'dataFim': dataFim.millisecondsSinceEpoch,
    };
  }

  factory Intervalo.fromMap(Map<String, dynamic> map) {
    return Intervalo(
      id: map['id'] as int,
      dataInicio: DateTime.fromMillisecondsSinceEpoch(map['dataInicio'] as int),
      dataFim: DateTime.fromMillisecondsSinceEpoch(map['dataFim'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Intervalo.fromJson(String source) =>
      Intervalo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Intervalo(id: $id, dataInicio: $dataInicio, dataFim: $dataFim)';

  @override
  bool operator ==(covariant Intervalo other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.dataInicio == dataInicio &&
        other.dataFim == dataFim;
  }

  @override
  int get hashCode => id.hashCode ^ dataInicio.hashCode ^ dataFim.hashCode;
}
