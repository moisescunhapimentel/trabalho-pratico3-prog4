import 'package:drift/drift.dart';
import 'package:trabalho3/data/banco_dados.dart';
import 'package:trabalho3/data/models/imovel.dart';
import 'package:trabalho3/data/tables/imovel_table.dart';

part 'imovel_dao.g.dart';

@DriftAccessor(
  tables: [ImovelTable],
)
class ImovelDao extends DatabaseAccessor<BancoDados> with _$ImovelDaoMixin {
  ImovelDao(super.db);

  Future<ImovelTableData?> obterImovelPeloId(int id) async {
    return await (select(imovelTable)
          ..where(
            (row) => row.id.equals(id),
          ))
        .getSingle();
  }

  Future<int> insert(ImovelTableCompanion imovelTableCompanion) async {
    final endereco = await db.enderecoDao
        .obterEnderecoPeloId(imovelTableCompanion.enderecoId.value);

    if (endereco == null) {
      throw Exception('Endereço não encontrado');
    }

    return await into(imovelTable).insert(imovelTableCompanion);
  }

  Future<List<ImovelTableData>> obterTodosMoveis() async {
    return await (select(imovelTable)).get();
  }

  Future<Imovel> obterImoveisComRelacionamentoPeloId(int imovelId) async {
    final imovel = await obterImovelPeloId(imovelId);

    if (imovel == null) {
      throw Exception('Imovel não encontrado');
    }

    final contratos = await db.contratoDao
        .obterContratosComRelacionamentoPeloIdImovel(imovelId);

    final comodos =
        await db.comodoDao.obterComodosComRelacionamentoPeloIdImovel(imovelId);

    final endereco =
        await db.enderecoDao.obterEnderecoPeloId(imovel.enderecoId);

    if (endereco == null) {
      throw Exception('Endereço do imóvel não encontrado');
    }

    return Imovel(
      id: imovel.id,
      nome: imovel.nome,
      contratos: contratos,
      descricao: imovel.descricao,
      endereco: endereco,
      comodos: comodos,
    );
  }

  Future<void> atualizar(Insertable<ImovelTableData> imovelTableData) async {
    await update(imovelTable).replace(imovelTableData);
  }
}
