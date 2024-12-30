import 'package:drift/drift.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/models/comodo.dart';
import 'package:trabalho3/data/tables/comodo_table.dart';

part 'comodo_dao.g.dart';

@DriftAccessor(tables: [ComodoTable])
class ComodoDao extends DatabaseAccessor<BancoDados> with _$ComodoDaoMixin {
  ComodoDao(super.db);

  Future<Comodo?> obterComodoPeloId(int id) async {
    try {
      return await (select(comodoTable)
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

  Future<int> insert(ComodoTableCompanion comodoTableCompanion) async {
    return await into(comodoTable).insert(comodoTableCompanion);
  }
}
