import 'package:drift/drift.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';
import 'package:trabalho3/data/tables/pagamento_table.dart';

part 'pagamento_dao.g.dart';

@DriftAccessor(tables: [PagamentoTable])
class PagamentoDao extends DatabaseAccessor<BancoDados>
    with _$PagamentoDaoMixin {
  PagamentoDao(super.db);

  Future<PagamentoTableData?> obterPagamentoPeloId(int id) async {
    return await (select(pagamentoTable)
          ..where(
            (row) => row.id.equals(id),
          ))
        .getSingleOrNull();
  }

  Future<List<PagamentoTableData>> obterPagamentosPeloIdContrato(
      int idContrato) async {
    final pagamentos = await (select(pagamentoTable)
          ..where(
            (row) => row.contratoId.equals(idContrato),
          ))
        .get();

    return pagamentos;
  }

  Future<int> insert(PagamentoTableCompanion pagamentoTableCompanion) async {
    return await into(pagamentoTable).insert(pagamentoTableCompanion);
  }

  Future<void> atualizar(
      Insertable<PagamentoTableData> pagamentoTableData) async {
    await update(pagamentoTable).replace(pagamentoTableData);
  }

  Future<List<PagamentoTableData>> obterPagamentosPorIntervalo(
      TipoIntervalo tipoInverlo, int quantidade) {
    if (tipoInverlo == TipoIntervalo.anual) {
      return getAllPagamentos(
          quantidade, (row) => row.createdAt.year.equals(quantidade));
    } else {
      return getAllPagamentos(
          quantidade, (row) => row.createdAt.month.equals(quantidade));
    }
  }

  Future<List<PagamentoTableData>> getAllPagamentos(
      int ano, Expression<bool> Function($PagamentoTableTable) filter) async {
    return await (select(pagamentoTable)
          ..where(
            filter,
          ))
        .get();
  }

  // Future<List<PagamentoTableData>> getAllPagamentosPorMes(int mes) async {
  //   return await (select(pagamentoTable)
  //         ..where(
  //           (row) => row.createdAt.month.equals(mes),
  //         ))
  //       .get();
  // }
}
