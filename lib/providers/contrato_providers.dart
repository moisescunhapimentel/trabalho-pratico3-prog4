import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';
import 'package:trabalho3/providers/banco_dados_provider.dart';

class FormularioContratoState {
  final GlobalKey<FormState> formKey;
  final TextEditingController dataInicioController;
  final TextEditingController dataFimController;
  final TextEditingController valorController;
  final TipoIntervalo intervaloPagamento;
  final DateTime? dataInicio;
  final DateTime? dataFim;

  FormularioContratoState({
    required this.formKey,
    required this.dataInicioController,
    required this.dataFimController,
    required this.intervaloPagamento,
    required this.valorController,
    this.dataInicio,
    this.dataFim,
  });

  FormularioContratoState copyWith({
    GlobalKey<FormState>? formKey,
    TextEditingController? dataInicioController,
    TextEditingController? dataFimController,
    TextEditingController? valorController,
    TipoIntervalo? intervaloPagamento,
    DateTime? dataInicio,
    DateTime? dataFim,
  }) {
    return FormularioContratoState(
      formKey: formKey ?? this.formKey,
      dataInicioController: dataInicioController ?? this.dataInicioController,
      dataFimController: dataFimController ?? this.dataFimController,
      intervaloPagamento: intervaloPagamento ?? this.intervaloPagamento,
      dataInicio: dataInicio,
      dataFim: dataFim,
      valorController: valorController ?? this.valorController,
    );
  }
}

class FormularioContratoNotifier
    extends StateNotifier<FormularioContratoState> {
  final BancoDados bancoDados;

  FormularioContratoNotifier(this.bancoDados)
      : super(FormularioContratoState(
          formKey: GlobalKey<FormState>(),
          dataInicioController: TextEditingController(),
          dataFimController: TextEditingController(),
          intervaloPagamento: TipoIntervalo.mensal,
          valorController: TextEditingController(),
        ));

  void updateIntervaloPagamento(TipoIntervalo tipo) {
    state = state.copyWith(intervaloPagamento: tipo);
  }

  void selecionarDataInicio(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      state.dataInicioController.text =
          picked.toLocal().toString().split(' ')[0];
      state = state.copyWith(dataInicio: picked);
    }
  }

  void selecionarDataFim(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      state.dataFimController.text = picked.toLocal().toString().split(' ')[0];
      state = state.copyWith(dataFim: picked);
    }
  }

  void clearForm() {
    state.dataFimController.clear();
    state.dataInicioController.clear();
    state.valorController.clear();
    state = state.copyWith(dataFim: null, dataInicio: null);
  }

  Future<bool> salvarContrato() async {
    // final contratoTableCompanion = ContratoTableCompanion.insert();

    try {
      // await bancoDados.clienteDao.insert(clienteTableCompanion);
      clearForm();
      return true;
    } catch (e) {
      return false;
    }
  }
}

final formularioContratoProvider =
    StateNotifierProvider<FormularioContratoNotifier, FormularioContratoState>(
  (ref) {
    final banco = ref.watch(bancoDadosProvider);
    return FormularioContratoNotifier(banco);
  },
);
