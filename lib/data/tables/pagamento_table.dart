import 'package:drift/drift.dart';
import 'package:trabalho3/data/enums/tipo_pagamento.dart';
import 'package:trabalho3/data/tables/contrato_table.dart';

class PagamentoTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tipoPagamento => textEnum<TipoPagamento>()();
  RealColumn get valor => real()();

  IntColumn get contratoId => integer().references(ContratoTable, #id)();
}
