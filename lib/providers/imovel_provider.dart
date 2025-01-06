import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/models/imovel.dart';
import 'package:trabalho3/providers/banco_dados_provider.dart';


class ImovelNotifier extends StateNotifier<Imovel?> {
  final BancoDados bancoDados;

  ImovelNotifier(this.bancoDados) : super(null);

  Future<void> carregarImovel(int id) async {
    try {
      final imovel = await bancoDados.imovelDao.obterImoveisComRelacionamentoPeloId(id);
      state = imovel; 
    } catch (e) {
      state = null;
    }
  }
}

final imovelProvider = StateNotifierProvider<ImovelNotifier, Imovel?>((ref) {
  final bancoDados = ref.watch(bancoDadosProvider); 
  return ImovelNotifier(bancoDados);
});
