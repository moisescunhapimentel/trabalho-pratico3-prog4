import 'package:flutter/material.dart';

class FormularioImovelModel with ChangeNotifier {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();
  final TextEditingController ruaController = TextEditingController();
  final TextEditingController numeroController = TextEditingController();
  final TextEditingController bairroController = TextEditingController();
  final TextEditingController cepController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String _selectedOption = 'Sobre';

  String get selectedOption => _selectedOption;

  void updateOption(String option) {
    _selectedOption = option;
    notifyListeners();
  }

  bool validateForm() {
    return formKey.currentState!.validate();
  }

  void saveForm() {
    formKey.currentState!.save();
  }

  @override
  void dispose() {
    nomeController.dispose();
    descricaoController.dispose();
    ruaController.dispose();
    numeroController.dispose();
    bairroController.dispose();
    cepController.dispose();
    super.dispose();
  }
}
