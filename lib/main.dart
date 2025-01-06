import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trabalho3/data/dao/theme_dao.dart';
import 'package:trabalho3/data/nosql_banco_dados.dart';
import 'package:trabalho3/ui/models/imovel_model.dart';
import 'package:trabalho3/ui/theme/app_theme.dart';
import 'package:trabalho3/ui/widgets/barra_navegacao_widget.dart';
import 'package:trabalho3/ui/models/formulario_imovel_model.dart';
import 'package:trabalho3/ui/models/formulario_cliente_model.dart';
import 'package:trabalho3/ui/models/formulario_contrato_model.dart';
import 'package:trabalho3/data/banco_dados.dart';

void main() async {
  final nosql = NosqlBancoDados();
  await nosql.init();

  runApp(
    MultiProvider(
      providers: [
        Provider<BancoDados>(create: (_) => BancoDados()),
        Provider<NosqlBancoDados>(create: (_) => nosql),
        Provider<ThemeDao>(
            create: (context) => ThemeDao(Provider.of(context, listen: false))),
        ChangeNotifierProvider(
          create: (context) => FormularioClienteModel(),
        ),
        ChangeNotifierProvider(create: (context) => ImovelModel()),
        ChangeNotifierProvider(create: (context) => FormularioImovelModel()),
        ChangeNotifierProvider(create: (context) => FormularioContratoModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MediaQuery.of(context).platformBrightness == Brightness.dark
          ? AppTheme.darkTheme.theme
          : AppTheme.lightTheme.theme,
      home: Builder(
        builder: (context) {
          return BarraNavegacaoWidget(
            toggleTheme:
                Provider.of<ThemeDao>(context, listen: false).toggleTheme,
          );
        },
      ),
    );
  }
}
