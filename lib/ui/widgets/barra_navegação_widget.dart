
import 'package:flutter/material.dart';
import 'package:trabalho3/data/models/navegacao_item.dart';
import 'package:trabalho3/ui/constants/colors.dart';

import 'package:trabalho3/ui/screens/Estatisticas_screen.dart';
import 'package:trabalho3/ui/screens/contratos_screen.dart';
import 'package:trabalho3/ui/screens/inicio_screen.dart';

class BarraNavegacaoWidget extends StatefulWidget {
  final VoidCallback toggleTheme;

  const BarraNavegacaoWidget({
    super.key,
    required this.toggleTheme,
  });

  @override
  State<BarraNavegacaoWidget> createState() => _BarraNavegacaoWidgetState();
}

class _BarraNavegacaoWidgetState extends State<BarraNavegacaoWidget> {
  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

  final List<NavegacaoItem> navegacaoInferiorItems= [
    NavegacaoItem(icone: Icons.assignment, screen: const ContratosScreen()),
    NavegacaoItem(icone: Icons.home, screen: InicioScreen( toggleTheme: widget.toggleTheme)),
    NavegacaoItem(icone: Icons.bar_chart, screen: const EstatisticasScreen()),
  ];

    var larguraScreen = MediaQuery.of(context).size.width;
    double espacoPorItem = larguraScreen /  navegacaoInferiorItems.length;
    double espacamentoHorizontal = espacoPorItem * 0.8;

    return Scaffold(
      body:  navegacaoInferiorItems[_selectIndex].screen,
      bottomNavigationBar: Container(
        height: 60,
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:  navegacaoInferiorItems.map((item) {
            int index =  navegacaoInferiorItems.indexOf(item);
            return GestureDetector(
              onTap: () => _onItemTapped(index),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: (espacamentoHorizontal / 2), vertical: 18),
                decoration: BoxDecoration(
                  color: _selectIndex == index
                      ? accentPrimary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(item.icone,
                    color:
                        _selectIndex == index ? surfaceColor : highlightSoft),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
