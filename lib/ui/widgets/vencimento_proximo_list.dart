import 'package:flutter/material.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';
import 'package:trabalho3/ui/constants/colors.dart';
import 'package:trabalho3/ui/widgets/vencimento_proximo_card.dart';

class VencimentoProximoList extends StatelessWidget {
  const VencimentoProximoList({super.key});

  @override
  Widget build(BuildContext context) {
    var larguraScreen = MediaQuery.of(context).size.width;
    var alturaScreen = MediaQuery.of(context).size.height;
    return Container(
      height: alturaScreen * 0.6,
        margin: EdgeInsets.symmetric(horizontal: larguraScreen * 0.06), 
        child: ListView(
          children: [
            VencimentoProximoCard(
              nomeImovel: 'Casa do João',
              nomeInquelino: 'João',
              valorContrato: 1000,
              tipoIntervalo: TipoIntervalo.mensal,
              dataVencimento: DateTime.now(),
              funcao: () => {},
            ),
            VencimentoProximoCard(
              nomeImovel: 'Casa do Pedro',
              nomeInquelino: 'Pedro',
              valorContrato: 2000,
              tipoIntervalo: TipoIntervalo.mensal,
              dataVencimento: DateTime.now(),
              funcao: () => {},
            ),
            VencimentoProximoCard(
              nomeImovel: 'Casa do José',
              nomeInquelino: 'José',
              valorContrato: 3000,
              tipoIntervalo: TipoIntervalo.mensal,
              dataVencimento: DateTime.now(),
              funcao: () => {},
            ),
          ],
        ),
     
    );
  }
}
