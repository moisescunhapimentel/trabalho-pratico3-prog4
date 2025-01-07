import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/models/imovel.dart';
import 'package:trabalho3/providers/banco_dados_provider.dart';
import 'package:trabalho3/data/dao/imovel_dao.dart';
import 'package:trabalho3/data/models/endereco.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:drift/drift.dart';

final imovelProvider =
    FutureProvider.family<ImovelTableData?, int>((ref, imovelId) async {
  final imovelDao = ref.watch(imovelDaoProvider);
  return imovelDao.obterImovelPeloId(imovelId);
});

final imovelEnderecoProvider =
    FutureProvider.family<Imovel?, int>((ref, imovelId) async {
  final imovelDao = ref.watch(imovelDaoProvider);
  return imovelDao.obterImoveisComEnderecoPeloId(imovelId); 
});


final imovelDaoProvider = Provider<ImovelDao>((ref) {
  return ImovelDao(ref.watch(bancoDadosProvider));
});

final imoveisProvider =
    StateNotifierProvider<ImoveisNotifier, AsyncValue<List<Imovel>>>((ref) {
  final imovelDao = ref.read(imovelDaoProvider);
  return ImoveisNotifier(imovelDao);
});

class ImoveisNotifier extends StateNotifier<AsyncValue<List<Imovel>>> {
  final ImovelDao imovelDao;

  ImoveisNotifier(this.imovelDao) : super(const AsyncValue.loading());
  void carregarListaImoveis() async {
    try {
      final imoveisTableData = await imovelDao.obterTodosMoveis();
      state = AsyncData(imoveisTableData.map((imovelData) {
        return Imovel(
          id: imovelData.id,
          nome: imovelData.nome,
          descricao: imovelData.descricao,
          endereco: Endereco(
            id: 0,
            rua: '',
            bairro: '',
            numero: '',
            cEP: '',
          ),
          contratos: [],
          comodos: [],
        );
      }).toList());
    } catch (e, stack) {
      AsyncError(e, stack);
    }
  }
}

class FormularioImovelState {
  final TextEditingController nomeController;
  final TextEditingController descricaoController;
  final TextEditingController ruaController;
  final TextEditingController bairroController;
  final TextEditingController numeroController;
  final TextEditingController cepController;

  FormularioImovelState({
    required this.nomeController,
    required this.descricaoController,
    required this.ruaController,
    required this.bairroController,
    required this.numeroController,
    required this.cepController,
  });
}

class FormularioImovelNotifier extends StateNotifier<FormularioImovelState> {
  final BancoDados bancoDados;

  FormularioImovelNotifier(this.bancoDados)
      : super(FormularioImovelState(
          nomeController: TextEditingController(),
          descricaoController: TextEditingController(),
          ruaController: TextEditingController(),
          bairroController: TextEditingController(),
          numeroController: TextEditingController(),
          cepController: TextEditingController(),
        ));

  void clearForm() {
    state.nomeController.clear();
    state.descricaoController.clear();
    state.ruaController.clear();
    state.bairroController.clear();
    state.numeroController.clear();
    state.cepController.clear();
  }

  Endereco criarEndereco() {
    return Endereco(
      id: 0,
      rua: state.ruaController.text,
      bairro: state.bairroController.text,
      numero: state.numeroController.text,
      cEP: state.cepController.text,
    );
  }

  Imovel criarImovel() {
    return Imovel(
      id: 0,
      nome: state.nomeController.text,
      descricao: state.descricaoController.text,
      endereco: Endereco(
        id: 0,
        rua: state.ruaController.text,
        bairro: state.bairroController.text,
        numero: state.numeroController.text,
        cEP: state.cepController.text,
      ),
      contratos: [],
      comodos: [],
    );
  }

  Future<bool> salvarImovel() async {
    final endereco = criarEndereco();
    final imovel = criarImovel();

    final enderecoId = await bancoDados.enderecoDao.insertAndGetId(
      EnderecoTableCompanion.insert(
        rua: endereco.rua,
        bairro: endereco.bairro,
        numero: endereco.numero,
        cEP: endereco.cEP,
      ),
    );

    try {
      final enderecoTableCompanion = EnderecoTableCompanion.insert(
        rua: endereco.rua,
        bairro: endereco.bairro,
        numero: endereco.numero,
        cEP: endereco.cEP,
      );

      await bancoDados.imovelDao.insert(
        ImovelTableCompanion.insert(
          nome: imovel.nome,
          descricao: imovel.descricao,
          enderecoId: enderecoId,
        ),
      );

      clearForm();
      return true;
    } catch (e) {
      return false;
    }
  }
}

final formularioImovelProvider =
    StateNotifierProvider<FormularioImovelNotifier, FormularioImovelState>(
  (ref) {
    final bancoDados = ref.watch(bancoDadosProvider);
    return FormularioImovelNotifier(bancoDados);
  },
);
