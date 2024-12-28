import 'dart:convert';

class Contato {
  final String numero;
  final String dDD;

  Contato({
    required this.numero,
    required this.dDD,
  });

  Contato copyWith({
    String? numero,
    String? dDD,
  }) {
    return Contato(
      numero: numero ?? this.numero,
      dDD: dDD ?? this.dDD,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numero': numero,
      'dDD': dDD,
    };
  }

  factory Contato.fromMap(Map<String, dynamic> map) {
    return Contato(
      numero: map['numero'] as String,
      dDD: map['dDD'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Contato.fromJson(String source) =>
      Contato.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Contato(numero: $numero, dDD: $dDD)';

  @override
  bool operator ==(covariant Contato other) {
    if (identical(this, other)) return true;

    return other.numero == numero && other.dDD == dDD;
  }

  @override
  int get hashCode => numero.hashCode ^ dDD.hashCode;
}
