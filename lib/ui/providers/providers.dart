import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/dao/theme_dao.dart';
import 'package:trabalho3/data/nosql_banco_dados.dart';
import 'package:trabalho3/ui/models/formulario_contrato_model.dart';
import 'package:trabalho3/ui/models/formulario_imovel_model.dart';
import 'package:trabalho3/ui/models/imovel_model.dart';
import 'package:trabalho3/ui/models/theme_model.dart';

final bancoDadosProvider = Provider<BancoDados>((ref) {
  final sqlBanco = BancoDados();
  return sqlBanco;
});

final themeDaoProvider = Provider<ThemeDao>((ref) {
  return ThemeDao(NosqlBancoDados());
});

final themeModelProvider = ChangeNotifierProvider<ThemeModel>((ref) {
  final themeDao = ref.read(themeDaoProvider);
  return ThemeModel(customTheme: themeDao.getTheme());
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
