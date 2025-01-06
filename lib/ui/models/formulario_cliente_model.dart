import 'package:flutter/material.dart';

class FormularioClienteModel with ChangeNotifier {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();
  final TextEditingController dataNascimentoController = TextEditingController();

  void disposeControllers() {
    nomeController.dispose();
    cpfController.dispose();
    telefoneController.dispose();
    dataNascimentoController.dispose();
  }

  void selecionarData(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      dataNascimentoController.text = '${pickedDate.day}-${pickedDate.month}-${pickedDate.year}';
      notifyListeners(); 
    }
  }
}
