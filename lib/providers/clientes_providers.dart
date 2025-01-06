import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/data/models/cliente.dart';
import 'package:trabalho3/providers/cliente_providers.dart';

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
