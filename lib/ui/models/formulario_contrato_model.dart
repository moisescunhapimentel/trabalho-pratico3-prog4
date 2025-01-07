import 'package:flutter/material.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';

class FormularioContratoModel with ChangeNotifier {
  final TextEditingController dataInicioController = TextEditingController();
  final TextEditingController dataFimController = TextEditingController();
  final TextEditingController diaPagamentoController = TextEditingController();
  final TextEditingController mesPagamentoController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TipoIntervalo _intervaloPagamento = TipoIntervalo.mensal;
  TipoIntervalo get intervaloPagamento => _intervaloPagamento;

  void updateIntervaloPagamento(TipoIntervalo intervalo) {
    _intervaloPagamento = intervalo;
    notifyListeners();
  }

  void selecionarDataInicio(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      dataInicioController.text =
          '${pickedDate.day}-${pickedDate.month}-${pickedDate.year}';
      notifyListeners();
    }
  }

  void selecionarDataFim(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      dataFimController.text =
          '${pickedDate.day}-${pickedDate.month}-${pickedDate.year}';
      notifyListeners();
    }
  }

  @override
  void dispose() {
    dataInicioController.dispose();
    dataFimController.dispose();
    diaPagamentoController.dispose();
    mesPagamentoController.dispose();
    super.dispose();
  }
}
