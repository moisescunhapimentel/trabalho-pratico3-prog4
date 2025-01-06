import 'package:drift/drift.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';
import 'package:trabalho3/data/tables/cliente_table.dart';
import 'package:trabalho3/data/tables/imovel_table.dart';

class ContratoTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tipoIntervalo => textEnum<TipoIntervalo>()();

  RealColumn get valor => real()();

  DateTimeColumn get dataInicio => dateTime()();
  DateTimeColumn get dataFim => dateTime()();

  IntColumn get diaPagamento => integer()();
  IntColumn get mesPagamento => integer().nullable()();

  IntColumn get clienteId => integer().references(ClienteTable, #id)();
  IntColumn get imovelId => integer().references(ImovelTable, #id)();
}
