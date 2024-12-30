import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:trabalho3/data/dao/endereco_dao.dart';
import 'package:trabalho3/data/models/endereco.dart';
import 'package:trabalho3/data/tables/endereco.dart';

part 'banco_dados.g.dart';

@DriftDatabase(
  tables: [EnderecoTable],
  daos: [EnderecoDao],
)
class BancoDados extends _$BancoDados {
  BancoDados() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'db.sqlite'));
      return NativeDatabase(file);
    });
  }
}
