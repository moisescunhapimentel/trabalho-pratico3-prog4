import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:trabalho3/data/models/custom_theme.dart';
import 'package:trabalho3/objectbox.g.dart';

class NosqlBancoDados {
  late final Store _store;
  late final Box<CustomTheme> _box;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    final storeDir = Directory('${dir.path}/person-db');

    _store = await openStore(directory: storeDir.path);

    _box = _store.box<CustomTheme>();
  }

  Box<CustomTheme> get themeBox => _box;

  void close() async {
    _store.close();
  }
}
