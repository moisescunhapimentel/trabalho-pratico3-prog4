import 'package:flutter/material.dart';
import 'package:trabalho3/ui/screens/clientes_screen.dart';
import 'package:trabalho3/ui/screens/imoveis_screen.dart';
import 'package:trabalho3/ui/widgets/texto_icone_button.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextoIconeButton(
                  icone: Icons.home,
                  texto: 'Imóveis',
                  funcao: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ImoveisScreen()),
                    );
                  },
                ),
                SizedBox(width: larguraScreen * 0.07),
                TextoIconeButton(
                  icone: Icons.person,
                  texto: 'Clientes',
                  funcao: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ClientesScreen()),
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
