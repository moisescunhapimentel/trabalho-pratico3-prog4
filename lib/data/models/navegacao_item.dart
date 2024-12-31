import 'package:flutter/material.dart';

import 'package:trabalho3/ui/screens/Estatisticas_screen.dart';
import 'package:trabalho3/ui/screens/contratos_screen.dart';
import 'package:trabalho3/ui/screens/inicio_screen.dart';

class NavegacaoItem {
  final IconData icone;
  final Widget screen;

  NavegacaoItem({required this.icone, required this.screen});
}

  final List<NavegacaoItem> navegacaoInferiorItems= [
    NavegacaoItem(icone: Icons.assignment, screen: const ContratosScreen()),
    NavegacaoItem(icone: Icons.home, screen: const InicioScreen()),
    NavegacaoItem(icone: Icons.bar_chart, screen: const EstatisticasScreen()),
  ];