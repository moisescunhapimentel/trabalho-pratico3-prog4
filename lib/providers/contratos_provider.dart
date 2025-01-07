import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/dao/contrato_dao.dart';
import 'package:trabalho3/data/dao/imovel_dao.dart';
import 'package:trabalho3/data/models/contrato.dart';
import 'package:trabalho3/data/models/imovel.dart';
import 'package:trabalho3/providers/banco_dados_provider.dart';

final contratoProvider =
    StateNotifierProvider<ContratoNotifier, Contrato?>((ref) {
  return ContratoNotifier();
});

class ContratoNotifier extends StateNotifier<Contrato?> {
  ContratoNotifier() : super(null);

  void selecionar(Contrato contrato) {
    state = contrato;
  }
}

final contratosProvider =
    StateNotifierProvider<ContratosNotifier, AsyncValue<List<ContratosState>>>(
        (ref) {
  final db = ref.watch(bancoDadosProvider);
  return ContratosNotifier(db.contratoDao, db.imovelDao);
});

class ContratosState {
  final Contrato contrato;
  final Imovel imovel;

  ContratosState({required this.contrato, required this.imovel});
}

class ContratosNotifier
    extends StateNotifier<AsyncValue<List<ContratosState>>> {
  final ContratoDao contratoDao;
  final ImovelDao imovelDao;

  ContratosNotifier(this.contratoDao, this.imovelDao)
      : super(const AsyncValue.loading());

  void carregarListaContratos() async {
    try {
      final contratos =
          await contratoDao.obterTodosContratosComRelacionamento();

      final contratosState = <ContratosState>[];

      for (var contrato in contratos) {
        final imovel =
            await imovelDao.obterImoveisComEnderecoPeloId(contrato.imovelId);
        contratosState.add(ContratosState(contrato: contrato, imovel: imovel));
      }

      state = AsyncData(contratosState);
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }
}
