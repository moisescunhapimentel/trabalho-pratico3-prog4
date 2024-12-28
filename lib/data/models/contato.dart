import 'dart:convert';

class Contato {
  final int id;
  final String numero;
  final String dDD;
  Contato({
    required this.id,
    required this.numero,
    required this.dDD,
  });

  Contato copyWith({
    int? id,
    String? numero,
    String? dDD,
  }) {
    return Contato(
      id: id ?? this.id,
      numero: numero ?? this.numero,
      dDD: dDD ?? this.dDD,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'numero': numero,
      'dDD': dDD,
    };
  }

  factory Contato.fromMap(Map<String, dynamic> map) {
    return Contato(
      id: map['id'] as int,
      numero: map['numero'] as String,
      dDD: map['dDD'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Contato.fromJson(String source) =>
      Contato.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Contato(id: $id, numero: $numero, dDD: $dDD)';

  @override
  bool operator ==(covariant Contato other) {
    if (identical(this, other)) return true;

    return other.id == id && other.numero == numero && other.dDD == dDD;
  }

  @override
  int get hashCode => id.hashCode ^ numero.hashCode ^ dDD.hashCode;
}
