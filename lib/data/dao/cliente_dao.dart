import 'package:drift/drift.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/models/cliente.dart';
import 'package:trabalho3/data/tables/cliente_table.dart';

part 'cliente_dao.g.dart';

@DriftAccessor(tables: [ClienteTable])
class ClienteDao extends DatabaseAccessor<BancoDados> with _$ClienteDaoMixin {
  ClienteDao(super.db);

  Future<ClienteTableData?> obterClientePeloId(int id) async {
    return await (select(clienteTable)
          ..where(
            (row) => row.id.equals(id),
          ))
        .getSingleOrNull();
  }

  Future<int> insert(ClienteTableCompanion clienteTableCompanion) async {
    return await into(clienteTable).insert(clienteTableCompanion);
  }

  Future<Cliente> obterClienteComContratos(int clienteId) async {
    final cliente = await obterClientePeloId(clienteId);

    if (cliente == null) {
      throw Exception('Cliente não encontrado');
    }

    final contratos = await db.contratoDao
        .obterContratosComRelacionamentoPeloIdCliente(clienteId);

    return Cliente(
        id: cliente.id,
        nome: cliente.nome,
        cPF: cliente.cPF,
        contato: cliente.contato,
        dataNascimento: cliente.dataNascimento,
        contratos: contratos);
  }

  Future<void> atualizar(Insertable<ClienteTableData> clienteTableData) async {
    await update(clienteTable).replace(clienteTableData);
  }
}
