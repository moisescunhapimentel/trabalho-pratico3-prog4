import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

Future<void> deleteDatabase() async {
  final dbFolder = await getApplicationDocumentsDirectory();
  final file = File(p.join(dbFolder.path, 'db.sqlite'));

  if (await file.exists()) {
    await file.delete();
    print('Banco de dados excluído com sucesso.');
  } else {
    print('Nenhum banco de dados encontrado para excluir.');
  }
}
