import 'package:drift/drift.dart';
import 'package:trabalho3/data/models/endereco.dart';

@UseRowClass(Endereco)
class EnderecoTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get rua => text()();
  TextColumn get bairro => text()();
  TextColumn get numero => text()();
  TextColumn get cEP => text().withLength(min: 9, max: 9)();
}
