import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/dao/theme_dao.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';
import 'package:trabalho3/data/nosql_banco_dados.dart';
import 'package:trabalho3/providers/banco_dados_provider.dart';
import 'package:trabalho3/ui/models/formulario_contrato_model.dart';
import 'package:trabalho3/ui/models/formulario_imovel_model.dart';
import 'package:trabalho3/ui/models/imovel_model.dart';
import 'package:trabalho3/providers/pagamento_notifier.dart';

final intervaloProvider =
    StateProvider<TipoIntervalo>((ref) => TipoIntervalo.mensal);

final nosqlProvider = FutureProvider<NosqlBancoDados>((ref) async {
  final nosql = NosqlBancoDados();
  await nosql.init();
  return nosql;
});

final themeDaoProvider = FutureProvider<ThemeDao>((ref) async {
  final nosql = await ref.watch(nosqlProvider.future);
  return ThemeDao(nosql);
});

// final themeModelProvider = FutureProvider<ThemeModel>((ref) async {
//   final themeDao = await ref.watch(themeDaoProvider.future);

//   return ThemeModel(customTheme: themeDao.getTheme());
// });

final imovelModelProvider = ChangeNotifierProvider<ImovelModel>((ref) {
  return ImovelModel();
});

final formularioImovelModelProvider =
    ChangeNotifierProvider<FormularioImovelModel>((ref) {
  return FormularioImovelModel();
});

final formularioContratoModelProvider =
    ChangeNotifierProvider<FormularioContratoModel>((ref) {
  return FormularioContratoModel();
});

final pagamentosProvider =
    StateNotifierProvider<PagamentosNotifier, AsyncValue<PagamentosState>>(
        (ref) {
  final pagamentoDao = ref.read(bancoDadosProvider).pagamentoDao;
  return PagamentosNotifier(pagamentoDao);
});
