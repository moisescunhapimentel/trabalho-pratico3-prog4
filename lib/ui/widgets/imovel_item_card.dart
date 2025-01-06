import 'package:flutter/material.dart';
import 'package:trabalho3/ui/screens/imovel_screen.dart';

class ImovelItemCard extends StatelessWidget {
  final String nomeImovel;
  final String rua;
  final String numImovel;
 
  const ImovelItemCard(
      {super.key,
      required this.nomeImovel,
      required this.rua,
      required this.numImovel,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ImovelScreen(nomeImovel: nomeImovel, descricao: 'descricao', rua: rua, numImovel: numImovel, bairro: 'bairro', cEP: 'cEP')),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nomeImovel,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(rua),
                        const SizedBox(width: 4),
                        const Text('|'),
                        const SizedBox(width: 4),
                        Text(numImovel),
                      ],
                    ),
                   
                  ],
                ),
              
            
          
        ),
      ),
    );
  }
}
