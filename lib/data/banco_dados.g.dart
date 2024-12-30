// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banco_dados.dart';

// ignore_for_file: type=lint
class $EnderecoTableTable extends EnderecoTable
    with TableInfo<$EnderecoTableTable, Endereco> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EnderecoTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _ruaMeta = const VerificationMeta('rua');
  @override
  late final GeneratedColumn<String> rua = GeneratedColumn<String>(
      'rua', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bairroMeta = const VerificationMeta('bairro');
  @override
  late final GeneratedColumn<String> bairro = GeneratedColumn<String>(
      'bairro', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numeroMeta = const VerificationMeta('numero');
  @override
  late final GeneratedColumn<String> numero = GeneratedColumn<String>(
      'numero', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cEPMeta = const VerificationMeta('cEP');
  @override
  late final GeneratedColumn<String> cEP = GeneratedColumn<String>(
      'c_e_p', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 9, maxTextLength: 9),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, rua, bairro, numero, cEP];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'endereco_table';
  @override
  VerificationContext validateIntegrity(Insertable<Endereco> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('rua')) {
      context.handle(
          _ruaMeta, rua.isAcceptableOrUnknown(data['rua']!, _ruaMeta));
    } else if (isInserting) {
      context.missing(_ruaMeta);
    }
    if (data.containsKey('bairro')) {
      context.handle(_bairroMeta,
          bairro.isAcceptableOrUnknown(data['bairro']!, _bairroMeta));
    } else if (isInserting) {
      context.missing(_bairroMeta);
    }
    if (data.containsKey('numero')) {
      context.handle(_numeroMeta,
          numero.isAcceptableOrUnknown(data['numero']!, _numeroMeta));
    } else if (isInserting) {
      context.missing(_numeroMeta);
    }
    if (data.containsKey('c_e_p')) {
      context.handle(
          _cEPMeta, cEP.isAcceptableOrUnknown(data['c_e_p']!, _cEPMeta));
    } else if (isInserting) {
      context.missing(_cEPMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Endereco map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Endereco(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      rua: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rua'])!,
      bairro: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bairro'])!,
      numero: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}numero'])!,
      cEP: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}c_e_p'])!,
    );
  }

  @override
  $EnderecoTableTable createAlias(String alias) {
    return $EnderecoTableTable(attachedDatabase, alias);
  }
}

class EnderecoTableCompanion extends UpdateCompanion<Endereco> {
  final Value<int> id;
  final Value<String> rua;
  final Value<String> bairro;
  final Value<String> numero;
  final Value<String> cEP;
  const EnderecoTableCompanion({
    this.id = const Value.absent(),
    this.rua = const Value.absent(),
    this.bairro = const Value.absent(),
    this.numero = const Value.absent(),
    this.cEP = const Value.absent(),
  });
  EnderecoTableCompanion.insert({
    this.id = const Value.absent(),
    required String rua,
    required String bairro,
    required String numero,
    required String cEP,
  })  : rua = Value(rua),
        bairro = Value(bairro),
        numero = Value(numero),
        cEP = Value(cEP);
  static Insertable<Endereco> custom({
    Expression<int>? id,
    Expression<String>? rua,
    Expression<String>? bairro,
    Expression<String>? numero,
    Expression<String>? cEP,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (rua != null) 'rua': rua,
      if (bairro != null) 'bairro': bairro,
      if (numero != null) 'numero': numero,
      if (cEP != null) 'c_e_p': cEP,
    });
  }

  EnderecoTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? rua,
      Value<String>? bairro,
      Value<String>? numero,
      Value<String>? cEP}) {
    return EnderecoTableCompanion(
      id: id ?? this.id,
      rua: rua ?? this.rua,
      bairro: bairro ?? this.bairro,
      numero: numero ?? this.numero,
      cEP: cEP ?? this.cEP,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (rua.present) {
      map['rua'] = Variable<String>(rua.value);
    }
    if (bairro.present) {
      map['bairro'] = Variable<String>(bairro.value);
    }
    if (numero.present) {
      map['numero'] = Variable<String>(numero.value);
    }
    if (cEP.present) {
      map['c_e_p'] = Variable<String>(cEP.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EnderecoTableCompanion(')
          ..write('id: $id, ')
          ..write('rua: $rua, ')
          ..write('bairro: $bairro, ')
          ..write('numero: $numero, ')
          ..write('cEP: $cEP')
          ..write(')'))
        .toString();
  }
}

abstract class _$BancoDados extends GeneratedDatabase {
  _$BancoDados(QueryExecutor e) : super(e);
  $BancoDadosManager get managers => $BancoDadosManager(this);
  late final $EnderecoTableTable enderecoTable = $EnderecoTableTable(this);
  late final EnderecoDao enderecoDao = EnderecoDao(this as BancoDados);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [enderecoTable];
}

typedef $$EnderecoTableTableCreateCompanionBuilder = EnderecoTableCompanion
    Function({
  Value<int> id,
  required String rua,
  required String bairro,
  required String numero,
  required String cEP,
});
typedef $$EnderecoTableTableUpdateCompanionBuilder = EnderecoTableCompanion
    Function({
  Value<int> id,
  Value<String> rua,
  Value<String> bairro,
  Value<String> numero,
  Value<String> cEP,
});

class $$EnderecoTableTableFilterComposer
    extends Composer<_$BancoDados, $EnderecoTableTable> {
  $$EnderecoTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get rua => $composableBuilder(
      column: $table.rua, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get bairro => $composableBuilder(
      column: $table.bairro, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get numero => $composableBuilder(
      column: $table.numero, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cEP => $composableBuilder(
      column: $table.cEP, builder: (column) => ColumnFilters(column));
}

class $$EnderecoTableTableOrderingComposer
    extends Composer<_$BancoDados, $EnderecoTableTable> {
  $$EnderecoTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get rua => $composableBuilder(
      column: $table.rua, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get bairro => $composableBuilder(
      column: $table.bairro, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get numero => $composableBuilder(
      column: $table.numero, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cEP => $composableBuilder(
      column: $table.cEP, builder: (column) => ColumnOrderings(column));
}

class $$EnderecoTableTableAnnotationComposer
    extends Composer<_$BancoDados, $EnderecoTableTable> {
  $$EnderecoTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get rua =>
      $composableBuilder(column: $table.rua, builder: (column) => column);

  GeneratedColumn<String> get bairro =>
      $composableBuilder(column: $table.bairro, builder: (column) => column);

  GeneratedColumn<String> get numero =>
      $composableBuilder(column: $table.numero, builder: (column) => column);

  GeneratedColumn<String> get cEP =>
      $composableBuilder(column: $table.cEP, builder: (column) => column);
}

class $$EnderecoTableTableTableManager extends RootTableManager<
    _$BancoDados,
    $EnderecoTableTable,
    Endereco,
    $$EnderecoTableTableFilterComposer,
    $$EnderecoTableTableOrderingComposer,
    $$EnderecoTableTableAnnotationComposer,
    $$EnderecoTableTableCreateCompanionBuilder,
    $$EnderecoTableTableUpdateCompanionBuilder,
    (Endereco, BaseReferences<_$BancoDados, $EnderecoTableTable, Endereco>),
    Endereco,
    PrefetchHooks Function()> {
  $$EnderecoTableTableTableManager(_$BancoDados db, $EnderecoTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EnderecoTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EnderecoTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EnderecoTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> rua = const Value.absent(),
            Value<String> bairro = const Value.absent(),
            Value<String> numero = const Value.absent(),
            Value<String> cEP = const Value.absent(),
          }) =>
              EnderecoTableCompanion(
            id: id,
            rua: rua,
            bairro: bairro,
            numero: numero,
            cEP: cEP,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String rua,
            required String bairro,
            required String numero,
            required String cEP,
          }) =>
              EnderecoTableCompanion.insert(
            id: id,
            rua: rua,
            bairro: bairro,
            numero: numero,
            cEP: cEP,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$EnderecoTableTableProcessedTableManager = ProcessedTableManager<
    _$BancoDados,
    $EnderecoTableTable,
    Endereco,
    $$EnderecoTableTableFilterComposer,
    $$EnderecoTableTableOrderingComposer,
    $$EnderecoTableTableAnnotationComposer,
    $$EnderecoTableTableCreateCompanionBuilder,
    $$EnderecoTableTableUpdateCompanionBuilder,
    (Endereco, BaseReferences<_$BancoDados, $EnderecoTableTable, Endereco>),
    Endereco,
    PrefetchHooks Function()>;

class $BancoDadosManager {
  final _$BancoDados _db;
  $BancoDadosManager(this._db);
  $$EnderecoTableTableTableManager get enderecoTable =>
      $$EnderecoTableTableTableManager(_db, _db.enderecoTable);
}
