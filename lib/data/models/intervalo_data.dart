import 'dart:convert';

class IntervaloData {
  final int id;
  final DateTime dataInicio;
  final DateTime dataFim;

  IntervaloData({
    required this.id,
    required this.dataInicio,
    required this.dataFim,
  });

  IntervaloData copyWith({
    int? id,
    DateTime? dataInicio,
    DateTime? dataFim,
  }) {
    return IntervaloData(
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

  factory IntervaloData.fromMap(Map<String, dynamic> map) {
    return IntervaloData(
      id: map['id'] as int,
      dataInicio: DateTime.fromMillisecondsSinceEpoch(map['dataInicio'] as int),
      dataFim: DateTime.fromMillisecondsSinceEpoch(map['dataFim'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory IntervaloData.fromJson(String source) =>
      IntervaloData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Intervalo(id: $id, dataInicio: $dataInicio, dataFim: $dataFim)';

  @override
  bool operator ==(covariant IntervaloData other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.dataInicio == dataInicio &&
        other.dataFim == dataFim;
  }

  @override
  int get hashCode => id.hashCode ^ dataInicio.hashCode ^ dataFim.hashCode;
}
