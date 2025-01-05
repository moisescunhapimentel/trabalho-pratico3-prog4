import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TituloDescricaoText extends StatelessWidget {

  final String titulo;
  final String descricao;
 
  const TituloDescricaoText({super.key, required this.titulo, required this.descricao});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
      children: [
        TextSpan(
          text: '$titulo\n',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        TextSpan(
          text: descricao,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    ));
  
  }
}