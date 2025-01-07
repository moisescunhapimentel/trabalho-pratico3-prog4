import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:trabalho3/data/converters/generic_converter.dart';
import 'package:trabalho3/data/dao/cliente_dao.dart';
import 'package:trabalho3/data/dao/comodo_dao.dart';
import 'package:trabalho3/data/dao/contrato_dao.dart';
import 'package:trabalho3/data/dao/endereco_dao.dart';
import 'package:trabalho3/data/dao/imovel_dao.dart';
import 'package:trabalho3/data/dao/pagamento_dao.dart';
import 'package:trabalho3/data/enums/tipo_comodo.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';
import 'package:trabalho3/data/enums/tipo_pagamento.dart';
import 'package:trabalho3/data/models/contato.dart';
import 'package:trabalho3/data/models/endereco.dart';
import 'package:trabalho3/data/tables/cliente_table.dart';
import 'package:trabalho3/data/tables/comodo_table.dart';
import 'package:trabalho3/data/tables/contrato_table.dart';
import 'package:trabalho3/data/tables/endereco_table.dart';
import 'package:trabalho3/data/tables/imovel_table.dart';
import 'package:trabalho3/data/tables/pagamento_table.dart';

part 'banco_dados.g.dart';

@DriftDatabase(
  tables: [
    EnderecoTable,
    ClienteTable,
    ComodoTable,
    PagamentoTable,
    ImovelTable,
    ContratoTable,
  ],
  daos: [
    EnderecoDao,
    ClienteDao,
    ComodoDao,
    PagamentoDao,
    ImovelDao,
    ContratoDao
  ],
)
class BancoDados extends _$BancoDados {
  BancoDados._privateConstructor() : super(_openConnection());

  static final BancoDados _instance = BancoDados._privateConstructor();

  static BancoDados get instance => _instance;

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
