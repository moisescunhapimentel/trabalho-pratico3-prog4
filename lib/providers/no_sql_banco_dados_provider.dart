import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/banco_dados.dart';

final bancoDadosProvider = Provider<BancoDados>((ref) {
  final bancoDados = BancoDados();
  return bancoDados;
});
