import 'package:drift/drift.dart';
import 'package:trabalho3/data/enums/tipo_comodo.dart';
import 'package:trabalho3/data/tables/imovel_table.dart';

class ComodoTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tipoComodo => textEnum<TipoComodo>()();
  IntColumn get quantidade => integer()();

  IntColumn get imovelId => integer().references(ImovelTable, #id)();
}
