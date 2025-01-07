import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/dao/cliente_dao.dart';
import 'package:trabalho3/data/dao/contrato_dao.dart';
import 'package:trabalho3/data/dao/imovel_dao.dart';
import 'package:trabalho3/data/dao/pagamento_dao.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';
import 'package:trabalho3/data/models/cliente.dart';
import 'package:trabalho3/data/models/contrato.dart';
import 'package:trabalho3/data/models/imovel.dart';
import 'package:trabalho3/providers/banco_dados_provider.dart';

class Vencimento {
  final Contrato contrato;
  final Cliente cliente;
  final DateTime data;
  final Imovel imovel;

  Vencimento(
      {required this.imovel,
      required this.data,
      required this.contrato,
      required this.cliente});
}

class VencimentoNotifier extends StateNotifier<AsyncValue<List<Vencimento>>> {
  final List<Vencimento> _vencimentos = [];
  final PagamentoDao pagamentoDao;
  final ContratoDao contratoDao;
  final ClienteDao clienteDao;
  final ImovelDao imovelDao;

  VencimentoNotifier(
      this.pagamentoDao, this.contratoDao, this.clienteDao, this.imovelDao)
      : super(const AsyncLoading());

  Future<void> obterContratosVencimentosProximos() async {
    final contratos = await contratoDao.obterTodosContratosComRelacionamento();

    final hoje = DateTime.now();

    final contratosVencimentosProximos = <Vencimento>[];

    for (final contrato in contratos) {
      var proximaData = contrato.dataInicio;
      int quantidadeVencimentos = 1;

      while (proximaData.isBefore(contrato.dataFim) ||
          proximaData.isAtSameMomentAs(contrato.dataFim)) {
        if (proximaData.isAfter(hoje) &&
            proximaData.isBefore(hoje.add(const Duration(days: 5)))) {
          if (quantidadeVencimentos > contrato.pagamentos.length) {
            final cliente =
                await clienteDao.obterClienteComContratos(contrato.clienteId);

            final imovel = await imovelDao
                .obterImoveisComRelacionamentoPeloId(contrato.imovelId);

            contratosVencimentosProximos.add(Vencimento(
              imovel: imovel,
              data: proximaData,
              contrato: contrato,
              cliente: cliente,
            ));
            break;
          }
        }

        if (contrato.intervaloPagamento == TipoIntervalo.mensal) {
          proximaData = DateTime(
              proximaData.year, proximaData.month + 1, proximaData.day);
        } else if (contrato.intervaloPagamento == TipoIntervalo.anual) {
          proximaData = DateTime(
              proximaData.year + 1, proximaData.month, proximaData.day);
        }

        quantidadeVencimentos += 1;
      }
    }

    state = AsyncData(contratosVencimentosProximos);
  }

  // Future<void> getPagamentoPeloId() {}

  // void selecionarVencimento(int id) {
  //   final vencimento =
  //       _vencimentos.firstWhere((v) => v.id == id, orElse: () => null);
  //   if (vencimento != null) {
  //     state = vencimento;
  //   } else {}
  // }

  List<Vencimento> get vencimentos => List.unmodifiable(_vencimentos);

  void limparEstado() {}
}

final vencimentoNotifierProvider =
    StateNotifierProvider<VencimentoNotifier, AsyncValue<List<Vencimento>>>(
        (ref) {
  final bd = ref.watch(bancoDadosProvider);

  return VencimentoNotifier(
      bd.pagamentoDao, bd.contratoDao, bd.clienteDao, bd.imovelDao);
});
