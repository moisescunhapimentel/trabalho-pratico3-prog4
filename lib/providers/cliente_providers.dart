import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trabalho3/providers/banco_dados_provider.dart';
import 'package:trabalho3/data/models/cliente.dart';
import 'package:trabalho3/data/dao/cliente_dao.dart';

final clienteProvider = FutureProvider.family<Cliente, int>((ref, clienteId) async {
  final clienteDao = ref.watch(clienteDaoProvider);
  return clienteDao.obterClienteComContratos(clienteId);
});

final clienteDaoProvider = Provider<ClienteDao>((ref) {
  return ClienteDao(ref.watch(bancoDadosProvider)); 
});
