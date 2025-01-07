import 'package:drift/drift.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/models/contrato.dart';
import 'package:trabalho3/data/models/pagamento.dart';
import 'package:trabalho3/data/tables/cliente_table.dart';
import 'package:trabalho3/data/tables/contrato_table.dart';
import 'package:trabalho3/data/tables/pagamento_table.dart';

part 'contrato_dao.g.dart';

@DriftAccessor(tables: [ContratoTable, ClienteTable, PagamentoTable])
class ContratoDao extends DatabaseAccessor<BancoDados> with _$ContratoDaoMixin {
  ContratoDao(super.db);

  Future<ContratoTableData?> obterContratoPeloId(int id) async {
    return await (select(contratoTable)
          ..where(
            (row) => row.id.equals(id),
          ))
        .getSingleOrNull();
  }

  Future<List<Contrato>> obterContratosComRelacionamentoPeloIdCliente(
      int clienteId) async {
    return await obterContratosComRelacionamentoPeloFilter(
        (tbl) => tbl.clienteId.equals(clienteId));
  }

  Future<List<Contrato>> obterContratosComRelacionamentoPeloIdImovel(
      int imovelId) async {
    return await obterContratosComRelacionamentoPeloFilter(
        (tbl) => tbl.imovelId.equals(imovelId));
  }

  Future<List<Contrato>> obterContratosComRelacionamentoPeloFilter(
      Expression<bool> Function($ContratoTableTable) filter) async {
    final join = await (select(contratoTable)..where(filter)).join([
      leftOuterJoin(pagamentoTable,
          pagamentoTable.contratoId.equalsExp(contratoTable.id)),
    ]).get();

    if (join.isEmpty) {
      return [];
    }

    final pagamentos = <PagamentoTableData>[];
    final contratos = <Contrato>[];

    for (var e in join) {
      final pagamento = e.readTableOrNull(pagamentoTable);

      if (pagamento != null) {
        pagamentos.add(pagamento);
      }

      final ContratoTableData contratoTableData = e.readTable(contratoTable);

      contratos.add(Contrato(
        valor: contratoTableData.valor,
        clienteId: contratoTableData.clienteId,
        id: contratoTableData.id,
        dataInicio: contratoTableData.dataInicio,
        dataFim: contratoTableData.dataFim,
        imovelId: contratoTableData.imovelId,
        // diaPagamento: contratoTableData.diaPagamento,
        intervaloPagamento: contratoTableData.tipoIntervalo,
        // mesPagamento: contratoTableData.mesPagamento,
        pagamentos: [],
      ));
    }

    for (var contrato in contratos) {
      contrato.pagamentos.addAll(pagamentos
          .where(
            (pagamento) => pagamento.contratoId == contrato.id,
          )
          .map(
            (pagamento) => Pagamento(
              id: pagamento.id,
              valor: pagamento.valor,
              tipoPagamento: pagamento.tipoPagamento,
            ),
          ));
    }

    return contratos;
  }

  Future<int> insert(ContratoTableCompanion contratoTableCompanion) async {
    return await into(contratoTable).insert(contratoTableCompanion);
  }

  Future<void> atualizar(
      Insertable<ContratoTableData> contratoTableData) async {
    await update(contratoTable).replace(contratoTableData);
  }

  Future<List<Contrato>> obterTodosContratosComRelacionamento() async {
    return await obterContratosComRelacionamentoPeloFilter(
        (tbl) => const Constant(true));
  }
}
