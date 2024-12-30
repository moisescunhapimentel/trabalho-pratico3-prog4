import 'package:drift/drift.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';

class ContratoTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tipoIntervalo => textEnum<TipoIntervalo>()();

  DateTimeColumn get dataInicio => dateTime()();
  DateTimeColumn get dataFim => dateTime()();

  IntColumn get diaPagamento => integer()();
  IntColumn get mesPagamento => integer().nullable()();

  // IntColumn get enderecoId => integer().references(EnderecoTable, #id)();
}
