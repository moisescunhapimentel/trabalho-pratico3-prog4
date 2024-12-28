import 'dart:convert';

class Endereco {
  final int id;
  final String rua;
  final String bairro;
  final String numero;
  final String cEP;

  Endereco({
    required this.id,
    required this.rua,
    required this.bairro,
    required this.numero,
    required this.cEP,
  });

  Endereco copyWith({
    int? id,
    String? rua,
    String? bairro,
    String? numero,
    String? cEP,
  }) {
    return Endereco(
      id: id ?? this.id,
      rua: rua ?? this.rua,
      bairro: bairro ?? this.bairro,
      numero: numero ?? this.numero,
      cEP: cEP ?? this.cEP,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'rua': rua,
      'bairro': bairro,
      'numero': numero,
      'cEP': cEP,
    };
  }

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      id: map['id'] as int,
      rua: map['rua'] as String,
      bairro: map['bairro'] as String,
      numero: map['numero'] as String,
      cEP: map['cEP'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Endereco.fromJson(String source) =>
      Endereco.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Endereco(id: $id, rua: $rua, bairro: $bairro, numero: $numero, cEP: $cEP)';
  }

  @override
  bool operator ==(covariant Endereco other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.rua == rua &&
        other.bairro == bairro &&
        other.numero == numero &&
        other.cEP == cEP;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        rua.hashCode ^
        bairro.hashCode ^
        numero.hashCode ^
        cEP.hashCode;
  }
}
