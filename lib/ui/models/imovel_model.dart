import 'package:flutter/foundation.dart';

class ImovelModel with ChangeNotifier {
  String _selectedOption = 'Sobre';

  String get selectedOption => _selectedOption;

  void updateOption(String option) {
    _selectedOption = option;
    notifyListeners();
  }
}
