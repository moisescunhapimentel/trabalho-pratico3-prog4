import 'package:flutter/material.dart';
import 'package:trabalho3/ui/screens/clientes_screen.dart';
import 'package:trabalho3/ui/screens/imoveis_screen.dart';
import 'package:trabalho3/ui/widgets/texto_icone_button.dart';
import 'package:trabalho3/ui/widgets/vencimento_proximo_list.dart';
import 'package:trabalho3/ui/theme/app_theme.dart';

class InicioScreen extends StatefulWidget {
  const InicioScreen({super.key});

  @override
  InicioScreenState createState() => InicioScreenState();
}

class InicioScreenState extends State<InicioScreen> {
  @override
  Widget build(BuildContext context) {
    var larguraScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VencimentoProximoList(),
            SizedBox(width: larguraScreen * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextoIconeButton(
                  icone: Icons.home,
                  texto: 'Imóveis',
                  funcao: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImoveisScreen()),
                    );
                  },
                ),
                SizedBox(width: larguraScreen * 0.01),
                TextoIconeButton(
                  icone: Icons.person,
                  texto: 'Clientes',
                  funcao: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ClientesScreen()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
