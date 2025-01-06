import 'package:flutter/material.dart';
import 'package:trabalho3/ui/constants/colors.dart';
import 'package:trabalho3/ui/widgets/seletor_button.dart';

class GraficoCard extends StatelessWidget {
  const GraficoCard({super.key});
  
  @override
  Widget build(BuildContext context) {
    var larguraScreen = MediaQuery.of(context).size.width;
    
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Lucro', style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(height: 10),
        SeletorButton(opcao1: 'Mensal', opcao2: 'Anual', selectedOption: 'Mensal', funcao: (String value) => {} ),
          const SizedBox(height: 10),
          Container(
            height: 200,
            width: (larguraScreen * 0.9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: highlightSoft,
                width: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
