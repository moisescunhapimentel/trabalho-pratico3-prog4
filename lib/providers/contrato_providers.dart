import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/enums/tipo_intervalo.dart';

class FormularioContratoState {
  final GlobalKey<FormState> formKey;
  final TextEditingController dataInicioController;
  final TextEditingController dataFimController;
  final TipoIntervalo intervaloPagamento;

  FormularioContratoState({
    required this.formKey,
    required this.dataInicioController,
    required this.dataFimController,
    required this.intervaloPagamento,
  });

  FormularioContratoState copyWith({
    GlobalKey<FormState>? formKey,
    TextEditingController? dataInicioController,
    TextEditingController? dataFimController,
    TipoIntervalo? intervaloPagamento,
  }) {
    return FormularioContratoState(
      formKey: formKey ?? this.formKey,
      dataInicioController: dataInicioController ?? this.dataInicioController,
      dataFimController: dataFimController ?? this.dataFimController,
      intervaloPagamento: intervaloPagamento ?? this.intervaloPagamento,
    );
  }
}

class FormularioContratoNotifier
    extends StateNotifier<FormularioContratoState> {
  FormularioContratoNotifier()
      : super(FormularioContratoState(
          formKey: GlobalKey<FormState>(),
          dataInicioController: TextEditingController(),
          dataFimController: TextEditingController(),
          intervaloPagamento: TipoIntervalo.mensal, // Valor padrão
        ));

  void updateIntervaloPagamento(TipoIntervalo tipo) {
    state = state.copyWith(intervaloPagamento: tipo);
  }

  void selecionarDataInicio(BuildContext context) {}

  void selecionarDataFim(BuildContext context) {}
}

final formularioContratoProvider =
    StateNotifierProvider<FormularioContratoNotifier, FormularioContratoState>(
  (ref) => FormularioContratoNotifier(),
);
