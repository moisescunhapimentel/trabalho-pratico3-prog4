import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/dao/contrato_dao.dart';
import 'package:trabalho3/data/models/contrato.dart';
import 'package:trabalho3/providers/banco_dados_provider.dart';

final contratosProvider =
    StateNotifierProvider<ContratosNotifier, AsyncValue<List<Contrato>>>((ref) {
  final contratoDao = ref.watch(bancoDadosProvider).contratoDao;
  return ContratosNotifier(contratoDao);
});

class ContratosNotifier extends StateNotifier<AsyncValue<List<Contrato>>> {
  final ContratoDao contratoDao;

  ContratosNotifier(this.contratoDao) : super(const AsyncValue.loading());

  void carregarListaClientes() async {
    try {
      final contratos =
          await contratoDao.obterTodosContratosComRelacionamento();

      state = AsyncData(contratos);
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }
}
