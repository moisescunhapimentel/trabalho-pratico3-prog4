import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trabalho3/ui/constants/colors.dart';
import 'package:trabalho3/ui/widgets/padrao_texto_button.dart';

class SeletorButton extends StatefulWidget {
  final String opcao1;
  final String opcao2;
  const SeletorButton({super.key, required this.opcao1, required this.opcao2});

  @override
  _SeletorButtonState createState() => _SeletorButtonState();
}

class _SeletorButtonState extends State<SeletorButton> {
  String? _opcaoSelecionada;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PadraoTextoButton(
            texto: widget.opcao1,
            cor: _opcaoSelecionada == widget.opcao1 ? backgroundColor : Colors.black,
            corFundo: _opcaoSelecionada == widget.opcao1
                ? accentSecondary
                : highlightNeutral,
            funcao: () {
              setState(() {
                _opcaoSelecionada = widget.opcao1;
              });
            },
          ),
          PadraoTextoButton(
            texto: widget.opcao2,
            cor: _opcaoSelecionada == widget.opcao2 ? backgroundColor : Colors.black,
            corFundo: _opcaoSelecionada == widget.opcao2
                ? accentSecondary
                : highlightNeutral,
            funcao: () {
              setState(() {
                _opcaoSelecionada = widget.opcao2;
              });
            },
          ),
        ], 
    );
  }
}
