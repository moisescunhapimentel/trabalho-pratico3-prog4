import 'package:drift/drift.dart';
import 'package:trabalho3/data/tables/endereco_table.dart';

class ImovelTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text()();
  TextColumn get descricao => text()();

  IntColumn get enderecoId => integer().references(EnderecoTable, #id)();

  // TextColumn get contato => text()
  // .map(GenericConverter<Contato>((value) => Contato.fromJson(value)))();

  // .references(EnderecoTable, #id)();
}
