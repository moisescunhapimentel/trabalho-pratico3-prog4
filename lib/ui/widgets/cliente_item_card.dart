import 'package:flutter/material.dart';

class ClienteItemCard extends StatelessWidget {
  final VoidCallback? funcao;
  const ClienteItemCard({super.key, this.funcao});

  @override
  Widget build(BuildContext context) {
    var larguraScreen = MediaQuery.of(context).size.width;
      return Card(
      child: Container(
        width: larguraScreen * 0.9,
        padding: const EdgeInsets.all(16),
        
        child: TextButton(onPressed: funcao, child: Text('Ricardo de Sousaa Araujo Lima', style: Theme.of(context).textTheme.bodyMedium)),
      ),
    );
  }
}
