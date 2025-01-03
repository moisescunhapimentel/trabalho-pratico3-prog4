import 'package:flutter/material.dart';
import 'package:trabalho3/ui/widgets/imovel_item_button.dart';
import '../../data/enums/tipo_intervalo.dart';
import 'package:trabalho3/ui/theme/app_theme.dart';
import 'package:trabalho3/ui/widgets/icone_flutuante_button.dart';
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
        ImovelItemButton(
          nome: 'Apartamento em Camocim',
          parcelas: '3',
          tipoIntervalo: TipoIntervalo.anual, 
          diaPagamento: 02,
          dataVencimento: DateTime(2024, 12, 31),
          funcao:() => {},
        ),
      ]),
      
    ),
      floatingActionButton: IconeFlutuanteButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
     
    
  }
}
