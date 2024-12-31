import 'package:flutter/material.dart';
import 'package:trabalho3/ui/constants/colors.dart';

class IconeFlutuanteButton extends StatelessWidget {
  final VoidCallback? funcao;
  final Object? heroTag;

  const IconeFlutuanteButton({super.key, this.funcao, this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 7, right: 15),
      child: FloatingActionButton(
        onPressed: funcao,
        heroTag: heroTag,
        backgroundColor: accentSecondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(
          Icons.add,
          color: surfaceColor,
          size: 30,
        ),
      ),
    );
  }
}

