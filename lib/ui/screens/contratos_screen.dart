import 'package:flutter/material.dart';
import 'package:trabalho3/ui/screens/formulario_contrato_screen.dart';
import 'package:trabalho3/ui/widgets/contrato_item_card.dart';
import '../../data/enums/tipo_intervalo.dart';
import 'package:trabalho3/ui/widgets/icone_flutuante_button.dart';
import 'package:trabalho3/ui/screens/contrato_screen.dart';

class ContratosScreen extends StatelessWidget {
  const ContratosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contratos ativos', ),
      ),
      body: Container(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        ContratoItemCard(
          nome: 'Apartamento em Camocim',
          parcelas: '3',
          tipoIntervalo: TipoIntervalo.anual, 
          diaPagamento: 02,
          dataVencimento: DateTime(2024, 12, 31),
          funcao: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContratoScreen(
                dataInicio: DateTime(2024, 1, 1),
                dataFim: DateTime(2024, 12, 31),
                intervaloPagamento: TipoIntervalo.anual,
                diaPagamento: 02,
                mesPagamento: null,
              )),
            );
          },
        ),
      ]),
      
    ),
      floatingActionButton: IconeFlutuanteButton(
        funcao: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormularioContratoScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
     
    
  }
}
