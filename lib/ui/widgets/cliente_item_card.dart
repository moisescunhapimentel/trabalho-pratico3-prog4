import 'package:flutter/material.dart';

class ClienteItemCard extends StatelessWidget {
  final VoidCallback? funcao;
  final String nome; 
  
  const ClienteItemCard({super.key, this.funcao, required this.nome});

  @override
  Widget build(BuildContext context) {
    var larguraScreen = MediaQuery.of(context).size.width;
      return  GestureDetector(
        onTap: funcao,
        child: Card(
          child: Container(
            width: larguraScreen * 0.9,
            padding: const EdgeInsets.all(16),
            child: Text(nome, style: Theme.of(context).textTheme.bodyMedium),
          ),
        ),
      );
  }
}
