import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/dao/theme_dao.dart';
import 'package:trabalho3/data/models/custom_theme.dart';
import 'package:trabalho3/data/nosql_banco_dados.dart';
import 'package:trabalho3/ui/models/formulario_contrato_model.dart';
import 'package:trabalho3/ui/models/formulario_imovel_model.dart';
import 'package:trabalho3/ui/models/imovel_model.dart';
import 'package:trabalho3/ui/providers/theme_notifier.dart';
import 'package:trabalho3/ui/providers/pagamento_notifier.dart';

final bancoDadosProvider = Provider<BancoDados>((ref) {
  final sqlBanco = BancoDados();
  return sqlBanco;
});

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

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, CustomTheme>((ref) {
  final themeDaoFuture = ref.watch(themeDaoProvider.future);

  return ThemeNotifier(initialTheme: themeDaoFuture.then((themeDao) {
    return themeDao.getTheme();
  }));
});

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
