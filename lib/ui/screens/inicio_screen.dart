import 'package:flutter/material.dart';
import 'package:trabalho3/ui/screens/clientes_screen.dart';
import 'package:trabalho3/ui/screens/imoveis_screen.dart';
import 'package:trabalho3/ui/widgets/texto_icone_button.dart';
import 'package:trabalho3/ui/widgets/vencimento_proximo_list.dart';

class InicioScreen extends StatefulWidget {
  final VoidCallback toggleTheme;
  const InicioScreen({super.key, required this.toggleTheme});

  @override
  InicioScreenState createState() => InicioScreenState();
}

class InicioScreenState extends State<InicioScreen> {
  IconData icon = Icons.brightness_2;

  @override
  Widget build(BuildContext context) {
    var larguraScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => {
              widget.toggleTheme(),
              setState(() {
                icon = icon == Icons.brightness_2
                    ? Icons.wb_sunny
                    : Icons.brightness_2;
              }),
            },
            child: Icon(icon),
          ),
          Center(
            child: Text("Vencimento Próximo",
                style: Theme.of(context).textTheme.displayLarge),
          ),
          SizedBox(height: larguraScreen * 0.03),
          const VencimentoProximoList(),
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
    );
  }
}
