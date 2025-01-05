import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trabalho3/ui/models/imovel_model.dart';
import 'package:trabalho3/ui/screens/inicio_screen.dart';
import 'package:trabalho3/ui/theme/app_theme.dart';
import 'package:trabalho3/ui/widgets/barra_navegação_widget.dart';
import 'package:trabalho3/ui/models/navegacao_item_model.dart';
import 'package:trabalho3/ui/models/formulario_imovel.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ImovelModel()),
        ChangeNotifierProvider(create: (context) => FormularioImovelModel()),
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
  bool isDarkMode = false;
  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
      home:Builder(
        builder: (context) {
          return BarraNavegacaoWidget(
            toggleTheme: toggleTheme, 
          );
        },
      ),
    );
  }
}