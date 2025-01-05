import 'package:flutter/material.dart';
import 'package:trabalho3/ui/constants/colors.dart';
import 'package:trabalho3/ui/widgets/padrao_texto_button.dart';

class SeletorButton extends StatefulWidget {
  final String opcao1;
  final String opcao2;
  final String selectedOption;
  final Function(String) funcao;

  const SeletorButton({
    super.key,
    required this.opcao1,
    required this.opcao2,
    required this.selectedOption,
    required this.funcao,
  });

  @override
  _SeletorButtonState createState() => _SeletorButtonState();
}

class _SeletorButtonState extends State<SeletorButton> {
  late String _opcaoSelecionada;

  @override
  void initState() {
    super.initState();
    _opcaoSelecionada = widget.selectedOption;
  }

  @override
  void didUpdateWidget(covariant SeletorButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedOption != oldWidget.selectedOption) {
      setState(() {
        _opcaoSelecionada = widget.selectedOption;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color accentPrimary = theme.colorScheme.primary;
    final Color surfaceColor = theme.colorScheme.surface;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PadraoTextoButton(
          texto: widget.opcao1,
          cor: _opcaoSelecionada == widget.opcao1 ? backgroundColor : Colors.black,
          corFundo: _opcaoSelecionada == widget.opcao1
              ? accentPrimary
              : surfaceColor,
          funcao: () {
            setState(() {
              _opcaoSelecionada = widget.opcao1;
            });
            widget.funcao(widget.opcao1);
          },
        ),

        PadraoTextoButton(
          texto: widget.opcao2,
          cor: _opcaoSelecionada == widget.opcao2 ? backgroundColor : Colors.black,
          corFundo: _opcaoSelecionada == widget.opcao2
              ? accentPrimary
              : surfaceColor,
          funcao: () {
            setState(() {
              _opcaoSelecionada = widget.opcao2;
            });
            widget.funcao(widget.opcao2);
          },
        ),
      ],
    );
  }
}
