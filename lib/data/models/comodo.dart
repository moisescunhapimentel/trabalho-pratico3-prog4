import 'dart:convert';

import 'package:trabalho3/data/enums/tipo_comodo.dart';

class Comodo {
  final int id;
  final TipoComodo tipoComodo;
  final int quantidade;

  Comodo({
    required this.id,
    required this.tipoComodo,
    required this.quantidade,
  });

  Comodo copyWith({
    int? id,
    TipoComodo? tipoComodo,
    int? quantidade,
  }) {
    return Comodo(
      id: id ?? this.id,
      tipoComodo: tipoComodo ?? this.tipoComodo,
      quantidade: quantidade ?? this.quantidade,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'tipoComodo': tipoComodo.name,
      'quantidade': quantidade,
    };
  }

  factory Comodo.fromMap(Map<String, dynamic> map) {
    return Comodo(
      id: map['id'] as int,
      tipoComodo: TipoComodoExtension.byName(map['tipoComodo']),
      quantidade: map['quantidade'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Comodo.fromJson(String source) =>
      Comodo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Comodo(id: $id, tipoComodo: $tipoComodo, quantidade: $quantidade)';

  @override
  bool operator ==(covariant Comodo other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.tipoComodo == tipoComodo &&
        other.quantidade == quantidade;
  }

  @override
  int get hashCode => id.hashCode ^ tipoComodo.hashCode ^ quantidade.hashCode;
}
