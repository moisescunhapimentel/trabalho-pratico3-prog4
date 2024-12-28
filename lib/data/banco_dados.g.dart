// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banco_dados.dart';

// ignore_for_file: type=lint
abstract class _$BancoDados extends GeneratedDatabase {
  _$BancoDados(QueryExecutor e) : super(e);
  $BancoDadosManager get managers => $BancoDadosManager(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [];
}

class $BancoDadosManager {
  final _$BancoDados _db;
  $BancoDadosManager(this._db);
}
