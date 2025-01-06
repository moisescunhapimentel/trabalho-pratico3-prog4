import 'package:flutter/material.dart';
import 'package:trabalho3/ui/widgets/grafico_card.dart';

class EstatisticasScreen extends StatefulWidget {
  const EstatisticasScreen({super.key});

  @override
  State<EstatisticasScreen> createState() => _EstatisticasScreenState();
}

class _EstatisticasScreenState extends State<EstatisticasScreen> {
  @override
  Widget build(BuildContext context) {
    var larguraScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          GraficoCard(),
        ],
      ),
    );
  }
}
