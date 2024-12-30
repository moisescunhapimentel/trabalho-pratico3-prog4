import 'package:drift/drift.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/tables/imovel_table.dart';

part 'imovel_dao.g.dart';

@DriftAccessor(tables: [ImovelTable])
class ImovelDao extends DatabaseAccessor<BancoDados> with _$ImovelDaoMixin {
  ImovelDao(super.db);

  Future<ImovelTableData?> obterImovelPeloId(int id) async {
    try {
      return await (select(imovelTable)
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

  Future<int> insert(ImovelTableCompanion imovelTableCompanion) async {
    return await into(imovelTable).insert(imovelTableCompanion);
  }
}
