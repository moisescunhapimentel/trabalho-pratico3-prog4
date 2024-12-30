import 'package:drift/drift.dart';
import 'package:trabalho3/data/enums/tipo_pagamento.dart';
import 'package:trabalho3/data/models/pagamento.dart';

@UseRowClass(Pagamento)
class PagamentoTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tipoPagamento => textEnum<TipoPagamento>()();
  RealColumn get valor => real()();
}
