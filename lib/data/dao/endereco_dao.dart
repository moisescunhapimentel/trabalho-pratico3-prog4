import 'package:drift/drift.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/models/endereco.dart';
import 'package:trabalho3/data/tables/endereco_table.dart';

part 'endereco_dao.g.dart';

@DriftAccessor(tables: [EnderecoTable])
class EnderecoDao extends DatabaseAccessor<BancoDados> with _$EnderecoDaoMixin {
  EnderecoDao(super.db);

  Future<Endereco?> obterEnderecoPeloId(int id) async {
    return await (select(enderecoTable)
          ..where(
            (row) => row.id.equals(id),
          ))
        .getSingleOrNull();
  }

  Future<int> insert(EnderecoTableCompanion enderecoTableCompanion) async {
    return await into(enderecoTable).insert(enderecoTableCompanion);
  }
}
