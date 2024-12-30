import 'package:drift/drift.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/models/pagamento.dart';
import 'package:trabalho3/data/tables/pagamento_table.dart';

part 'pagamento_dao.g.dart';

@DriftAccessor(tables: [PagamentoTable])
class PagamentoDao extends DatabaseAccessor<BancoDados>
    with _$PagamentoDaoMixin {
  PagamentoDao(super.db);

  Future<Pagamento?> obterPagamentoPeloId(int id) async {
    try {
      return await (select(pagamentoTable)
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

  Future<int> insert(PagamentoTableCompanion pagamentoTableCompanion) async {
    return await into(pagamentoTable).insert(pagamentoTableCompanion);
  }
}
