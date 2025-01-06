import 'package:drift/drift.dart';
import 'package:trabalho3/data/converters/generic_converter.dart';
import 'package:trabalho3/data/models/contato.dart';

class ClienteTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text()();
  TextColumn get cPF => text()();

  DateTimeColumn get dataNascimento => dateTime()();

  TextColumn get contato => text()
      .map(GenericConverter<Contato>((value) => Contato.fromJson(value)))();
}
