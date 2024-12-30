import 'package:drift/drift.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/models/cliente.dart';
import 'package:trabalho3/data/tables/cliente_table.dart';

part 'cliente_dao.g.dart';

@DriftAccessor(tables: [ClienteTable])
class ClienteDao extends DatabaseAccessor<BancoDados> with _$ClienteDaoMixin {
  ClienteDao(super.db);

  Future<Cliente?> obterClientePeloId(int id) async {
    try {
      return await (select(clienteTable)
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

  Future<int> insert(ClienteTableCompanion clienteTableCompanion) async {
    return await into(clienteTable).insert(clienteTableCompanion);
  }
}
