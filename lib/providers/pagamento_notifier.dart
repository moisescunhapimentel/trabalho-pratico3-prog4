import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/dao/pagamento_dao.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';
import 'package:trabalho3/data/models/intervalo.dart';

class PagamentosState {
  final List<PagamentoTableData> pagamentos;
  final TipoIntervalo tipoIntervalo;

  PagamentosState({
    required this.pagamentos,
    required this.tipoIntervalo,
  });
}

class PagamentosNotifier extends StateNotifier<AsyncValue<PagamentosState>> {
  final PagamentoDao pagamentoDao;

  PagamentosNotifier(this.pagamentoDao) : super(const AsyncValue.loading());

  void obterPagamentosPorIntervalo(
      Intervalo intervalo, TipoIntervalo tipoInvervalo) async {
    state = const AsyncValue.loading();

    try {
      final pagamentos = await pagamentoDao.obterPagamentosPorIntervalo(
          tipoInvervalo, intervalo);
      state = AsyncValue.data(PagamentosState(
        pagamentos: pagamentos,
        tipoIntervalo: tipoInvervalo,
      ));
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
