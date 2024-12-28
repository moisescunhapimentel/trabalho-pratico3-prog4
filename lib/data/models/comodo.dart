import 'dart:convert';

import 'package:trabalho3/data/enums/tipo_comodo.dart';

class Comodo {
  final TipoComodo tipoComodo;
  final int quantidade;

  Comodo({required this.quantidade, required this.tipoComodo});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tipoComodo': tipoComodo.name,
      'quantidade': quantidade,
    };
  }

  factory Comodo.fromMap(Map<String, dynamic> map) {
    return Comodo(
      tipoComodo: TipoComodoExtension.byName(map['tipoComodo']),
      quantidade: map['quantidade'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Comodo.fromJson(String source) =>
      Comodo.fromMap(json.decode(source) as Map<String, dynamic>);
}
