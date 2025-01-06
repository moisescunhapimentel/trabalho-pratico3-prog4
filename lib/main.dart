import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trabalho3/data/dao/theme_dao.dart';
import 'package:trabalho3/data/nosql_banco_dados.dart';
import 'package:trabalho3/ui/models/imovel_model.dart';
import 'package:trabalho3/ui/models/theme_model.dart';
import 'package:trabalho3/ui/theme/app_theme.dart';
import 'package:trabalho3/ui/widgets/barra_navegacao_widget.dart';
import 'package:trabalho3/ui/models/formulario_imovel_model.dart';
import 'package:trabalho3/ui/models/formulario_contrato_model.dart';
import 'package:trabalho3/data/banco_dados.dart';

void main() async {
  final nosql = NosqlBancoDados();
  final themeDao = ThemeDao(nosql);

  await nosql.init();

  runApp(
    MultiProvider(
      providers: [
        Provider<BancoDados>(
          create: (_) => BancoDados(),
        ),
        Provider<ThemeDao>(
          create: (_) => themeDao,
        ),
        ChangeNotifierProvider<ThemeModel>(
          create: (_) => ThemeModel(customTheme: themeDao.getTheme()),
        ),
        ChangeNotifierProvider(create: (context) => ImovelModel()),
        ChangeNotifierProvider(create: (context) => FormularioImovelModel()),
        ChangeNotifierProvider(create: (context) => FormularioContratoModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeModel>(context, listen: true);
    final themeDao = Provider.of<ThemeDao>(context, listen: false);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.customTheme.brightness == Brightness.light.name
          ? AppTheme.lightTheme.theme
          : AppTheme.darkTheme.theme,
      home: BarraNavegacaoWidget(
        toggleTheme: () {
          debugPrint(theme.customTheme.brightness);

          themeDao.toggleTheme();
          theme.changeTheme(themeDao.getTheme());
        },
      ),
    );
  }
}
