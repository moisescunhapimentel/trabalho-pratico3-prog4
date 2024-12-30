import 'package:drift/drift.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/tables/contrato_table.dart';

part 'contrato_dao.g.dart';

@DriftAccessor(tables: [ContratoTable])
class ContratoDao extends DatabaseAccessor<BancoDados> with _$ContratoDaoMixin {
  ContratoDao(super.db);

  Future<ContratoTableData?> obterContratoPeloId(int id) async {
    try {
      return await (select(contratoTable)
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

  Future<int> insert(ContratoTableCompanion contratoTableCompanion) async {
    return await into(contratoTable).insert(contratoTableCompanion);
  }
}
