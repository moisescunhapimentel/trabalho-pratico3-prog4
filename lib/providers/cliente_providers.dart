import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/models/cliente.dart';
import 'package:trabalho3/data/models/cliente.dart';
import 'package:trabalho3/data/dao/cliente_dao.dart';
import 'package:trabalho3/providers/banco_dados_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/models/cliente.dart';
import 'package:trabalho3/data/models/contato.dart';


final clienteProvider = FutureProvider.family<Cliente, int>((ref, clienteId) async {
  final clienteDao = ref.watch(clienteDaoProvider);
  return clienteDao.obterClienteComContratos(clienteId);
});

final clienteDaoProvider = Provider<ClienteDao>((ref) {
  return ClienteDao(ref.watch(bancoDadosProvider)); 
});

final clientesProvider = FutureProvider<List<Cliente>>((ref) async {
  final clienteDao = ref.watch(clienteDaoProvider);

  final clientesTableData = await clienteDao.obterTodosClientes();

  return clientesTableData.map((clienteData) {
    return Cliente(
      id: clienteData.id,
      nome: clienteData.nome,
      cPF: clienteData.cPF,
      contato: clienteData.contato,
      dataNascimento: clienteData.dataNascimento,
      contratos: [],
    );
  }).toList();
});



class FormularioClienteState {
  final TextEditingController nomeController;
  final TextEditingController cpfController;
  final TextEditingController telefoneController;
  final TextEditingController dataNascimentoController;
  final Contato? contato;
  final DateTime? dataNascimento;

  FormularioClienteState({
    required this.nomeController,
    required this.cpfController,
    required this.telefoneController,
    required this.dataNascimentoController,
    this.contato,
    this.dataNascimento,
  });

  FormularioClienteState copyWith({
    TextEditingController? nomeController,
    TextEditingController? cpfController,
    TextEditingController? telefoneController,
    TextEditingController? dataNascimentoController,
    Contato? contato,
    DateTime? dataNascimento,
  }) {
    return FormularioClienteState(
      nomeController: nomeController ?? this.nomeController,
      cpfController: cpfController ?? this.cpfController,
      telefoneController: telefoneController ?? this.telefoneController,
      dataNascimentoController: dataNascimentoController ?? this.dataNascimentoController,
      contato: contato ?? this.contato,
      dataNascimento: dataNascimento ?? this.dataNascimento,
    );
  }
}

class FormularioClienteNotifier extends StateNotifier<FormularioClienteState> {
  final BancoDados bancoDados;

  FormularioClienteNotifier(this.bancoDados)
      : super(
          FormularioClienteState(
            nomeController: TextEditingController(),
            cpfController: TextEditingController(),
            telefoneController: TextEditingController(),
            dataNascimentoController: TextEditingController(),
          ),
        );

  //data de nascimento
  void selecionarData(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      state.dataNascimentoController.text = picked.toLocal().toString().split(' ')[0];
      state = state.copyWith(dataNascimento: picked);
    }
  }

  void clearForm() {
    state.nomeController.clear();
    state.cpfController.clear();
    state.telefoneController.clear();
    state.dataNascimentoController.clear();
    state = state.copyWith(contato: null, dataNascimento: null);
  }

  Cliente criarCliente() {
    return Cliente(
      id: 0, // O id será atribuído ao salvar no backend
      nome: state.nomeController.text,
      cPF: state.cpfController.text,
      contato: Contato(numero: state.telefoneController.text, dDD: ''),
      dataNascimento: state.dataNascimento ?? DateTime.now(),
      contratos: [],
    );
  }
Future<bool> salvarCliente() async {
  final cliente = criarCliente();
  final clienteTableCompanion = ClienteTableCompanion.insert(
    nome: cliente.nome,
    cPF: cliente.cPF,
    dataNascimento: cliente.dataNascimento,
    contato: cliente.contato,
  );

  try {
    await bancoDados.clienteDao.insert(clienteTableCompanion);
    clearForm();
    return true; // salvamento foi bem-sucedido
  } catch (e) {
   
    return false; 
  }
}

  void atualizarContato(Contato novoContato) {
    state = state.copyWith(contato: novoContato);
  }
}

final bancoDadosProvider = Provider<BancoDados>((ref) {
  return BancoDados();
});

final formularioClienteProvider =
    StateNotifierProvider<FormularioClienteNotifier, FormularioClienteState>(
  (ref) {
    final bancoDados = ref.watch(bancoDadosProvider);
    return FormularioClienteNotifier(bancoDados);
  },
);

