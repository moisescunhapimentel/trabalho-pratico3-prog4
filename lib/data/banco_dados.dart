import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:trabalho3/data/converters/generic_converter.dart';
import 'package:trabalho3/data/dao/cliente_dao.dart';
import 'package:trabalho3/data/dao/comodo_dao.dart';
import 'package:trabalho3/data/dao/endereco_dao.dart';
import 'package:trabalho3/data/dao/pagamento_dao.dart';
import 'package:trabalho3/data/enums/tipo_comodo.dart';
import 'package:trabalho3/data/enums/tipo_pagamento.dart';
import 'package:trabalho3/data/models/cliente.dart';
import 'package:trabalho3/data/models/comodo.dart';
import 'package:trabalho3/data/models/contato.dart';
import 'package:trabalho3/data/models/endereco.dart';
import 'package:trabalho3/data/models/pagamento.dart';
import 'package:trabalho3/data/tables/cliente_table.dart';
import 'package:trabalho3/data/tables/comodo_table.dart';
import 'package:trabalho3/data/tables/endereco_table.dart';
import 'package:trabalho3/data/tables/pagamento_table.dart';

part 'banco_dados.g.dart';

@DriftDatabase(
  tables: [EnderecoTable, ClienteTable, ComodoTable, PagamentoTable],
  daos: [EnderecoDao, ClienteDao, ComodoDao, PagamentoDao],
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
