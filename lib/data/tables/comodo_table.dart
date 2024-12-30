import 'package:drift/drift.dart';
import 'package:trabalho3/data/enums/tipo_comodo.dart';
import 'package:trabalho3/data/models/comodo.dart';

@UseRowClass(Comodo)
class ComodoTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tipoComodo => textEnum<TipoComodo>()();
  IntColumn get quantidade => integer()();
}
