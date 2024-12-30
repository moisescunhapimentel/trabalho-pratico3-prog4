import 'package:drift/drift.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/models/endereco.dart';
import 'package:trabalho3/data/tables/endereco.dart';

part 'endereco_dao.g.dart';

@DriftAccessor(tables: [EnderecoTable])
class EnderecoDao extends DatabaseAccessor<BancoDados> with _$EnderecoDaoMixin {
  EnderecoDao(super.db);

  Future<Endereco?> obterEnderecoPeloId(int id) async {
    try {
      return await (select(enderecoTable)
            ..where(
              (row) => row.id.equals(id),
            ))
          .getSingle();
    } catch (e) {
      return Future(
        () => null,
      );
    }
  }

  Future<int> insert(EnderecoTableCompanion enderecoTableCompanion) async {
    return await into(enderecoTable).insert(enderecoTableCompanion);
  }
}
