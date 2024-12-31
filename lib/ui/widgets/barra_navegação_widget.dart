import 'package:flutter/material.dart';
import 'package:trabalho3/data/models/navegacao_item.dart';
import 'package:trabalho3/ui/constants/colors.dart';

class BarraNavegacaoWidget extends StatefulWidget {
  final List<NavegacaoItem> items;

  const BarraNavegacaoWidget({super.key, required this.items});

  @override
  State<BarraNavegacaoWidget> createState() => _BarraNavegacaoWidgetState();
}

class _BarraNavegacaoWidgetState extends State<BarraNavegacaoWidget> {
  
  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var larguraScreen = MediaQuery.of(context).size.width;
    double espacoPorItem = larguraScreen / widget.items.length;
    double espacamentoHorizontal = espacoPorItem * 0.8;

    return Scaffold(
      body: widget.items[_selectIndex].screen,
      bottomNavigationBar:  Container(
        height: 60,
        color: backgroundColor, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: widget.items.map((item) {
            int index = widget.items.indexOf(item);
            return GestureDetector(
              onTap: () => _onItemTapped(index),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: ( espacamentoHorizontal / 2 ), vertical: 18),
                decoration: BoxDecoration(
                  color: _selectIndex == index ? accentPrimary : Colors.transparent, 
                  borderRadius: BorderRadius.circular(8), 
                ),
                child: Icon(
                  item.icone,
                  color: _selectIndex == index ? surfaceColor : highlightSoft),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}