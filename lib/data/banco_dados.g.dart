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

class $ClienteTableTable extends ClienteTable
    with TableInfo<$ClienteTableTable, ClienteTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cPFMeta = const VerificationMeta('cPF');
  @override
  late final GeneratedColumn<String> cPF = GeneratedColumn<String>(
      'c_p_f', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dataNascimentoMeta =
      const VerificationMeta('dataNascimento');
  @override
  late final GeneratedColumn<DateTime> dataNascimento =
      GeneratedColumn<DateTime>('data_nascimento', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _contatoMeta =
      const VerificationMeta('contato');
  @override
  late final GeneratedColumnWithTypeConverter<Contato, String> contato =
      GeneratedColumn<String>('contato', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Contato>($ClienteTableTable.$convertercontato);
  @override
  List<GeneratedColumn> get $columns =>
      [id, nome, cPF, dataNascimento, contato];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cliente_table';
  @override
  VerificationContext validateIntegrity(Insertable<ClienteTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('c_p_f')) {
      context.handle(
          _cPFMeta, cPF.isAcceptableOrUnknown(data['c_p_f']!, _cPFMeta));
    } else if (isInserting) {
      context.missing(_cPFMeta);
    }
    if (data.containsKey('data_nascimento')) {
      context.handle(
          _dataNascimentoMeta,
          dataNascimento.isAcceptableOrUnknown(
              data['data_nascimento']!, _dataNascimentoMeta));
    } else if (isInserting) {
      context.missing(_dataNascimentoMeta);
    }
    context.handle(_contatoMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClienteTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      cPF: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}c_p_f'])!,
      dataNascimento: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}data_nascimento'])!,
      contato: $ClienteTableTable.$convertercontato.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contato'])!),
    );
  }

  @override
  $ClienteTableTable createAlias(String alias) {
    return $ClienteTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Contato, String, String> $convertercontato =
      GenericConverter<Contato>((value) => Contato.fromJson(value));
}

class ClienteTableData extends DataClass
    implements Insertable<ClienteTableData> {
  final int id;
  final String nome;
  final String cPF;
  final DateTime dataNascimento;
  final Contato contato;
  const ClienteTableData(
      {required this.id,
      required this.nome,
      required this.cPF,
      required this.dataNascimento,
      required this.contato});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['c_p_f'] = Variable<String>(cPF);
    map['data_nascimento'] = Variable<DateTime>(dataNascimento);
    {
      map['contato'] =
          Variable<String>($ClienteTableTable.$convertercontato.toSql(contato));
    }
    return map;
  }

  ClienteTableCompanion toCompanion(bool nullToAbsent) {
    return ClienteTableCompanion(
      id: Value(id),
      nome: Value(nome),
      cPF: Value(cPF),
      dataNascimento: Value(dataNascimento),
      contato: Value(contato),
    );
  }

  factory ClienteTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClienteTableData(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      cPF: serializer.fromJson<String>(json['cPF']),
      dataNascimento: serializer.fromJson<DateTime>(json['dataNascimento']),
      contato: $ClienteTableTable.$convertercontato
          .fromJson(serializer.fromJson<String>(json['contato'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'cPF': serializer.toJson<String>(cPF),
      'dataNascimento': serializer.toJson<DateTime>(dataNascimento),
      'contato': serializer
          .toJson<String>($ClienteTableTable.$convertercontato.toJson(contato)),
    };
  }

  ClienteTableData copyWith(
          {int? id,
          String? nome,
          String? cPF,
          DateTime? dataNascimento,
          Contato? contato}) =>
      ClienteTableData(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        cPF: cPF ?? this.cPF,
        dataNascimento: dataNascimento ?? this.dataNascimento,
        contato: contato ?? this.contato,
      );
  ClienteTableData copyWithCompanion(ClienteTableCompanion data) {
    return ClienteTableData(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      cPF: data.cPF.present ? data.cPF.value : this.cPF,
      dataNascimento: data.dataNascimento.present
          ? data.dataNascimento.value
          : this.dataNascimento,
      contato: data.contato.present ? data.contato.value : this.contato,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClienteTableData(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('cPF: $cPF, ')
          ..write('dataNascimento: $dataNascimento, ')
          ..write('contato: $contato')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nome, cPF, dataNascimento, contato);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClienteTableData &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.cPF == this.cPF &&
          other.dataNascimento == this.dataNascimento &&
          other.contato == this.contato);
}

class ClienteTableCompanion extends UpdateCompanion<ClienteTableData> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> cPF;
  final Value<DateTime> dataNascimento;
  final Value<Contato> contato;
  const ClienteTableCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.cPF = const Value.absent(),
    this.dataNascimento = const Value.absent(),
    this.contato = const Value.absent(),
  });
  ClienteTableCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required String cPF,
    required DateTime dataNascimento,
    required Contato contato,
  })  : nome = Value(nome),
        cPF = Value(cPF),
        dataNascimento = Value(dataNascimento),
        contato = Value(contato);
  static Insertable<ClienteTableData> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? cPF,
    Expression<DateTime>? dataNascimento,
    Expression<String>? contato,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (cPF != null) 'c_p_f': cPF,
      if (dataNascimento != null) 'data_nascimento': dataNascimento,
      if (contato != null) 'contato': contato,
    });
  }

  ClienteTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? nome,
      Value<String>? cPF,
      Value<DateTime>? dataNascimento,
      Value<Contato>? contato}) {
    return ClienteTableCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      cPF: cPF ?? this.cPF,
      dataNascimento: dataNascimento ?? this.dataNascimento,
      contato: contato ?? this.contato,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (cPF.present) {
      map['c_p_f'] = Variable<String>(cPF.value);
    }
    if (dataNascimento.present) {
      map['data_nascimento'] = Variable<DateTime>(dataNascimento.value);
    }
    if (contato.present) {
      map['contato'] = Variable<String>(
          $ClienteTableTable.$convertercontato.toSql(contato.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClienteTableCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('cPF: $cPF, ')
          ..write('dataNascimento: $dataNascimento, ')
          ..write('contato: $contato')
          ..write(')'))
        .toString();
  }
}

class $ImovelTableTable extends ImovelTable
    with TableInfo<$ImovelTableTable, ImovelTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ImovelTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descricaoMeta =
      const VerificationMeta('descricao');
  @override
  late final GeneratedColumn<String> descricao = GeneratedColumn<String>(
      'descricao', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _enderecoIdMeta =
      const VerificationMeta('enderecoId');
  @override
  late final GeneratedColumn<int> enderecoId = GeneratedColumn<int>(
      'endereco_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES endereco_table (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, nome, descricao, enderecoId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'imovel_table';
  @override
  VerificationContext validateIntegrity(Insertable<ImovelTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('descricao')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['descricao']!, _descricaoMeta));
    } else if (isInserting) {
      context.missing(_descricaoMeta);
    }
    if (data.containsKey('endereco_id')) {
      context.handle(
          _enderecoIdMeta,
          enderecoId.isAcceptableOrUnknown(
              data['endereco_id']!, _enderecoIdMeta));
    } else if (isInserting) {
      context.missing(_enderecoIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ImovelTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ImovelTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      descricao: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}descricao'])!,
      enderecoId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}endereco_id'])!,
    );
  }

  @override
  $ImovelTableTable createAlias(String alias) {
    return $ImovelTableTable(attachedDatabase, alias);
  }
}

class ImovelTableData extends DataClass implements Insertable<ImovelTableData> {
  final int id;
  final String nome;
  final String descricao;
  final int enderecoId;
  const ImovelTableData(
      {required this.id,
      required this.nome,
      required this.descricao,
      required this.enderecoId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['descricao'] = Variable<String>(descricao);
    map['endereco_id'] = Variable<int>(enderecoId);
    return map;
  }

  ImovelTableCompanion toCompanion(bool nullToAbsent) {
    return ImovelTableCompanion(
      id: Value(id),
      nome: Value(nome),
      descricao: Value(descricao),
      enderecoId: Value(enderecoId),
    );
  }

  factory ImovelTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ImovelTableData(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      descricao: serializer.fromJson<String>(json['descricao']),
      enderecoId: serializer.fromJson<int>(json['enderecoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'descricao': serializer.toJson<String>(descricao),
      'enderecoId': serializer.toJson<int>(enderecoId),
    };
  }

  ImovelTableData copyWith(
          {int? id, String? nome, String? descricao, int? enderecoId}) =>
      ImovelTableData(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        descricao: descricao ?? this.descricao,
        enderecoId: enderecoId ?? this.enderecoId,
      );
  ImovelTableData copyWithCompanion(ImovelTableCompanion data) {
    return ImovelTableData(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      descricao: data.descricao.present ? data.descricao.value : this.descricao,
      enderecoId:
          data.enderecoId.present ? data.enderecoId.value : this.enderecoId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ImovelTableData(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('enderecoId: $enderecoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nome, descricao, enderecoId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ImovelTableData &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.descricao == this.descricao &&
          other.enderecoId == this.enderecoId);
}

class ImovelTableCompanion extends UpdateCompanion<ImovelTableData> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> descricao;
  final Value<int> enderecoId;
  const ImovelTableCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
    this.enderecoId = const Value.absent(),
  });
  ImovelTableCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required String descricao,
    required int enderecoId,
  })  : nome = Value(nome),
        descricao = Value(descricao),
        enderecoId = Value(enderecoId);
  static Insertable<ImovelTableData> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? descricao,
    Expression<int>? enderecoId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (descricao != null) 'descricao': descricao,
      if (enderecoId != null) 'endereco_id': enderecoId,
    });
  }

  ImovelTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? nome,
      Value<String>? descricao,
      Value<int>? enderecoId}) {
    return ImovelTableCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      enderecoId: enderecoId ?? this.enderecoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (descricao.present) {
      map['descricao'] = Variable<String>(descricao.value);
    }
    if (enderecoId.present) {
      map['endereco_id'] = Variable<int>(enderecoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ImovelTableCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('enderecoId: $enderecoId')
          ..write(')'))
        .toString();
  }
}

class $ComodoTableTable extends ComodoTable
    with TableInfo<$ComodoTableTable, ComodoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ComodoTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _tipoComodoMeta =
      const VerificationMeta('tipoComodo');
  @override
  late final GeneratedColumnWithTypeConverter<TipoComodo, String> tipoComodo =
      GeneratedColumn<String>('tipo_comodo', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<TipoComodo>($ComodoTableTable.$convertertipoComodo);
  static const VerificationMeta _quantidadeMeta =
      const VerificationMeta('quantidade');
  @override
  late final GeneratedColumn<int> quantidade = GeneratedColumn<int>(
      'quantidade', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _imovelIdMeta =
      const VerificationMeta('imovelId');
  @override
  late final GeneratedColumn<int> imovelId = GeneratedColumn<int>(
      'imovel_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES imovel_table (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, tipoComodo, quantidade, imovelId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'comodo_table';
  @override
  VerificationContext validateIntegrity(Insertable<ComodoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_tipoComodoMeta, const VerificationResult.success());
    if (data.containsKey('quantidade')) {
      context.handle(
          _quantidadeMeta,
          quantidade.isAcceptableOrUnknown(
              data['quantidade']!, _quantidadeMeta));
    } else if (isInserting) {
      context.missing(_quantidadeMeta);
    }
    if (data.containsKey('imovel_id')) {
      context.handle(_imovelIdMeta,
          imovelId.isAcceptableOrUnknown(data['imovel_id']!, _imovelIdMeta));
    } else if (isInserting) {
      context.missing(_imovelIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ComodoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ComodoTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      tipoComodo: $ComodoTableTable.$convertertipoComodo.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}tipo_comodo'])!),
      quantidade: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantidade'])!,
      imovelId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}imovel_id'])!,
    );
  }

  @override
  $ComodoTableTable createAlias(String alias) {
    return $ComodoTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<TipoComodo, String, String> $convertertipoComodo =
      const EnumNameConverter<TipoComodo>(TipoComodo.values);
}

class ComodoTableData extends DataClass implements Insertable<ComodoTableData> {
  final int id;
  final TipoComodo tipoComodo;
  final int quantidade;
  final int imovelId;
  const ComodoTableData(
      {required this.id,
      required this.tipoComodo,
      required this.quantidade,
      required this.imovelId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      map['tipo_comodo'] = Variable<String>(
          $ComodoTableTable.$convertertipoComodo.toSql(tipoComodo));
    }
    map['quantidade'] = Variable<int>(quantidade);
    map['imovel_id'] = Variable<int>(imovelId);
    return map;
  }

  ComodoTableCompanion toCompanion(bool nullToAbsent) {
    return ComodoTableCompanion(
      id: Value(id),
      tipoComodo: Value(tipoComodo),
      quantidade: Value(quantidade),
      imovelId: Value(imovelId),
    );
  }

  factory ComodoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ComodoTableData(
      id: serializer.fromJson<int>(json['id']),
      tipoComodo: $ComodoTableTable.$convertertipoComodo
          .fromJson(serializer.fromJson<String>(json['tipoComodo'])),
      quantidade: serializer.fromJson<int>(json['quantidade']),
      imovelId: serializer.fromJson<int>(json['imovelId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tipoComodo': serializer.toJson<String>(
          $ComodoTableTable.$convertertipoComodo.toJson(tipoComodo)),
      'quantidade': serializer.toJson<int>(quantidade),
      'imovelId': serializer.toJson<int>(imovelId),
    };
  }

  ComodoTableData copyWith(
          {int? id, TipoComodo? tipoComodo, int? quantidade, int? imovelId}) =>
      ComodoTableData(
        id: id ?? this.id,
        tipoComodo: tipoComodo ?? this.tipoComodo,
        quantidade: quantidade ?? this.quantidade,
        imovelId: imovelId ?? this.imovelId,
      );
  ComodoTableData copyWithCompanion(ComodoTableCompanion data) {
    return ComodoTableData(
      id: data.id.present ? data.id.value : this.id,
      tipoComodo:
          data.tipoComodo.present ? data.tipoComodo.value : this.tipoComodo,
      quantidade:
          data.quantidade.present ? data.quantidade.value : this.quantidade,
      imovelId: data.imovelId.present ? data.imovelId.value : this.imovelId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ComodoTableData(')
          ..write('id: $id, ')
          ..write('tipoComodo: $tipoComodo, ')
          ..write('quantidade: $quantidade, ')
          ..write('imovelId: $imovelId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, tipoComodo, quantidade, imovelId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ComodoTableData &&
          other.id == this.id &&
          other.tipoComodo == this.tipoComodo &&
          other.quantidade == this.quantidade &&
          other.imovelId == this.imovelId);
}

class ComodoTableCompanion extends UpdateCompanion<ComodoTableData> {
  final Value<int> id;
  final Value<TipoComodo> tipoComodo;
  final Value<int> quantidade;
  final Value<int> imovelId;
  const ComodoTableCompanion({
    this.id = const Value.absent(),
    this.tipoComodo = const Value.absent(),
    this.quantidade = const Value.absent(),
    this.imovelId = const Value.absent(),
  });
  ComodoTableCompanion.insert({
    this.id = const Value.absent(),
    required TipoComodo tipoComodo,
    required int quantidade,
    required int imovelId,
  })  : tipoComodo = Value(tipoComodo),
        quantidade = Value(quantidade),
        imovelId = Value(imovelId);
  static Insertable<ComodoTableData> custom({
    Expression<int>? id,
    Expression<String>? tipoComodo,
    Expression<int>? quantidade,
    Expression<int>? imovelId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tipoComodo != null) 'tipo_comodo': tipoComodo,
      if (quantidade != null) 'quantidade': quantidade,
      if (imovelId != null) 'imovel_id': imovelId,
    });
  }

  ComodoTableCompanion copyWith(
      {Value<int>? id,
      Value<TipoComodo>? tipoComodo,
      Value<int>? quantidade,
      Value<int>? imovelId}) {
    return ComodoTableCompanion(
      id: id ?? this.id,
      tipoComodo: tipoComodo ?? this.tipoComodo,
      quantidade: quantidade ?? this.quantidade,
      imovelId: imovelId ?? this.imovelId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tipoComodo.present) {
      map['tipo_comodo'] = Variable<String>(
          $ComodoTableTable.$convertertipoComodo.toSql(tipoComodo.value));
    }
    if (quantidade.present) {
      map['quantidade'] = Variable<int>(quantidade.value);
    }
    if (imovelId.present) {
      map['imovel_id'] = Variable<int>(imovelId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ComodoTableCompanion(')
          ..write('id: $id, ')
          ..write('tipoComodo: $tipoComodo, ')
          ..write('quantidade: $quantidade, ')
          ..write('imovelId: $imovelId')
          ..write(')'))
        .toString();
  }
}

class $ContratoTableTable extends ContratoTable
    with TableInfo<$ContratoTableTable, ContratoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContratoTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _tipoIntervaloMeta =
      const VerificationMeta('tipoIntervalo');
  @override
  late final GeneratedColumnWithTypeConverter<TipoIntervalo, String>
      tipoIntervalo = GeneratedColumn<String>(
              'tipo_intervalo', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<TipoIntervalo>(
              $ContratoTableTable.$convertertipoIntervalo);
  static const VerificationMeta _valorMeta = const VerificationMeta('valor');
  @override
  late final GeneratedColumn<double> valor = GeneratedColumn<double>(
      'valor', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _dataInicioMeta =
      const VerificationMeta('dataInicio');
  @override
  late final GeneratedColumn<DateTime> dataInicio = GeneratedColumn<DateTime>(
      'data_inicio', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _dataFimMeta =
      const VerificationMeta('dataFim');
  @override
  late final GeneratedColumn<DateTime> dataFim = GeneratedColumn<DateTime>(
      'data_fim', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _clienteIdMeta =
      const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<int> clienteId = GeneratedColumn<int>(
      'cliente_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES cliente_table (id)'));
  static const VerificationMeta _imovelIdMeta =
      const VerificationMeta('imovelId');
  @override
  late final GeneratedColumn<int> imovelId = GeneratedColumn<int>(
      'imovel_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES imovel_table (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, tipoIntervalo, valor, dataInicio, dataFim, clienteId, imovelId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'contrato_table';
  @override
  VerificationContext validateIntegrity(Insertable<ContratoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_tipoIntervaloMeta, const VerificationResult.success());
    if (data.containsKey('valor')) {
      context.handle(
          _valorMeta, valor.isAcceptableOrUnknown(data['valor']!, _valorMeta));
    } else if (isInserting) {
      context.missing(_valorMeta);
    }
    if (data.containsKey('data_inicio')) {
      context.handle(
          _dataInicioMeta,
          dataInicio.isAcceptableOrUnknown(
              data['data_inicio']!, _dataInicioMeta));
    } else if (isInserting) {
      context.missing(_dataInicioMeta);
    }
    if (data.containsKey('data_fim')) {
      context.handle(_dataFimMeta,
          dataFim.isAcceptableOrUnknown(data['data_fim']!, _dataFimMeta));
    } else if (isInserting) {
      context.missing(_dataFimMeta);
    }
    if (data.containsKey('cliente_id')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['cliente_id']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('imovel_id')) {
      context.handle(_imovelIdMeta,
          imovelId.isAcceptableOrUnknown(data['imovel_id']!, _imovelIdMeta));
    } else if (isInserting) {
      context.missing(_imovelIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ContratoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ContratoTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      tipoIntervalo: $ContratoTableTable.$convertertipoIntervalo.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}tipo_intervalo'])!),
      valor: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}valor'])!,
      dataInicio: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}data_inicio'])!,
      dataFim: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}data_fim'])!,
      clienteId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cliente_id'])!,
      imovelId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}imovel_id'])!,
    );
  }

  @override
  $ContratoTableTable createAlias(String alias) {
    return $ContratoTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<TipoIntervalo, String, String>
      $convertertipoIntervalo =
      const EnumNameConverter<TipoIntervalo>(TipoIntervalo.values);
}

class ContratoTableData extends DataClass
    implements Insertable<ContratoTableData> {
  final int id;
  final TipoIntervalo tipoIntervalo;
  final double valor;
  final DateTime dataInicio;
  final DateTime dataFim;
  final int clienteId;
  final int imovelId;
  const ContratoTableData(
      {required this.id,
      required this.tipoIntervalo,
      required this.valor,
      required this.dataInicio,
      required this.dataFim,
      required this.clienteId,
      required this.imovelId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      map['tipo_intervalo'] = Variable<String>(
          $ContratoTableTable.$convertertipoIntervalo.toSql(tipoIntervalo));
    }
    map['valor'] = Variable<double>(valor);
    map['data_inicio'] = Variable<DateTime>(dataInicio);
    map['data_fim'] = Variable<DateTime>(dataFim);
    map['cliente_id'] = Variable<int>(clienteId);
    map['imovel_id'] = Variable<int>(imovelId);
    return map;
  }

  ContratoTableCompanion toCompanion(bool nullToAbsent) {
    return ContratoTableCompanion(
      id: Value(id),
      tipoIntervalo: Value(tipoIntervalo),
      valor: Value(valor),
      dataInicio: Value(dataInicio),
      dataFim: Value(dataFim),
      clienteId: Value(clienteId),
      imovelId: Value(imovelId),
    );
  }

  factory ContratoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContratoTableData(
      id: serializer.fromJson<int>(json['id']),
      tipoIntervalo: $ContratoTableTable.$convertertipoIntervalo
          .fromJson(serializer.fromJson<String>(json['tipoIntervalo'])),
      valor: serializer.fromJson<double>(json['valor']),
      dataInicio: serializer.fromJson<DateTime>(json['dataInicio']),
      dataFim: serializer.fromJson<DateTime>(json['dataFim']),
      clienteId: serializer.fromJson<int>(json['clienteId']),
      imovelId: serializer.fromJson<int>(json['imovelId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tipoIntervalo': serializer.toJson<String>(
          $ContratoTableTable.$convertertipoIntervalo.toJson(tipoIntervalo)),
      'valor': serializer.toJson<double>(valor),
      'dataInicio': serializer.toJson<DateTime>(dataInicio),
      'dataFim': serializer.toJson<DateTime>(dataFim),
      'clienteId': serializer.toJson<int>(clienteId),
      'imovelId': serializer.toJson<int>(imovelId),
    };
  }

  ContratoTableData copyWith(
          {int? id,
          TipoIntervalo? tipoIntervalo,
          double? valor,
          DateTime? dataInicio,
          DateTime? dataFim,
          int? clienteId,
          int? imovelId}) =>
      ContratoTableData(
        id: id ?? this.id,
        tipoIntervalo: tipoIntervalo ?? this.tipoIntervalo,
        valor: valor ?? this.valor,
        dataInicio: dataInicio ?? this.dataInicio,
        dataFim: dataFim ?? this.dataFim,
        clienteId: clienteId ?? this.clienteId,
        imovelId: imovelId ?? this.imovelId,
      );
  ContratoTableData copyWithCompanion(ContratoTableCompanion data) {
    return ContratoTableData(
      id: data.id.present ? data.id.value : this.id,
      tipoIntervalo: data.tipoIntervalo.present
          ? data.tipoIntervalo.value
          : this.tipoIntervalo,
      valor: data.valor.present ? data.valor.value : this.valor,
      dataInicio:
          data.dataInicio.present ? data.dataInicio.value : this.dataInicio,
      dataFim: data.dataFim.present ? data.dataFim.value : this.dataFim,
      clienteId: data.clienteId.present ? data.clienteId.value : this.clienteId,
      imovelId: data.imovelId.present ? data.imovelId.value : this.imovelId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ContratoTableData(')
          ..write('id: $id, ')
          ..write('tipoIntervalo: $tipoIntervalo, ')
          ..write('valor: $valor, ')
          ..write('dataInicio: $dataInicio, ')
          ..write('dataFim: $dataFim, ')
          ..write('clienteId: $clienteId, ')
          ..write('imovelId: $imovelId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, tipoIntervalo, valor, dataInicio, dataFim, clienteId, imovelId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContratoTableData &&
          other.id == this.id &&
          other.tipoIntervalo == this.tipoIntervalo &&
          other.valor == this.valor &&
          other.dataInicio == this.dataInicio &&
          other.dataFim == this.dataFim &&
          other.clienteId == this.clienteId &&
          other.imovelId == this.imovelId);
}

class ContratoTableCompanion extends UpdateCompanion<ContratoTableData> {
  final Value<int> id;
  final Value<TipoIntervalo> tipoIntervalo;
  final Value<double> valor;
  final Value<DateTime> dataInicio;
  final Value<DateTime> dataFim;
  final Value<int> clienteId;
  final Value<int> imovelId;
  const ContratoTableCompanion({
    this.id = const Value.absent(),
    this.tipoIntervalo = const Value.absent(),
    this.valor = const Value.absent(),
    this.dataInicio = const Value.absent(),
    this.dataFim = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.imovelId = const Value.absent(),
  });
  ContratoTableCompanion.insert({
    this.id = const Value.absent(),
    required TipoIntervalo tipoIntervalo,
    required double valor,
    required DateTime dataInicio,
    required DateTime dataFim,
    required int clienteId,
    required int imovelId,
  })  : tipoIntervalo = Value(tipoIntervalo),
        valor = Value(valor),
        dataInicio = Value(dataInicio),
        dataFim = Value(dataFim),
        clienteId = Value(clienteId),
        imovelId = Value(imovelId);
  static Insertable<ContratoTableData> custom({
    Expression<int>? id,
    Expression<String>? tipoIntervalo,
    Expression<double>? valor,
    Expression<DateTime>? dataInicio,
    Expression<DateTime>? dataFim,
    Expression<int>? clienteId,
    Expression<int>? imovelId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tipoIntervalo != null) 'tipo_intervalo': tipoIntervalo,
      if (valor != null) 'valor': valor,
      if (dataInicio != null) 'data_inicio': dataInicio,
      if (dataFim != null) 'data_fim': dataFim,
      if (clienteId != null) 'cliente_id': clienteId,
      if (imovelId != null) 'imovel_id': imovelId,
    });
  }

  ContratoTableCompanion copyWith(
      {Value<int>? id,
      Value<TipoIntervalo>? tipoIntervalo,
      Value<double>? valor,
      Value<DateTime>? dataInicio,
      Value<DateTime>? dataFim,
      Value<int>? clienteId,
      Value<int>? imovelId}) {
    return ContratoTableCompanion(
      id: id ?? this.id,
      tipoIntervalo: tipoIntervalo ?? this.tipoIntervalo,
      valor: valor ?? this.valor,
      dataInicio: dataInicio ?? this.dataInicio,
      dataFim: dataFim ?? this.dataFim,
      clienteId: clienteId ?? this.clienteId,
      imovelId: imovelId ?? this.imovelId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tipoIntervalo.present) {
      map['tipo_intervalo'] = Variable<String>($ContratoTableTable
          .$convertertipoIntervalo
          .toSql(tipoIntervalo.value));
    }
    if (valor.present) {
      map['valor'] = Variable<double>(valor.value);
    }
    if (dataInicio.present) {
      map['data_inicio'] = Variable<DateTime>(dataInicio.value);
    }
    if (dataFim.present) {
      map['data_fim'] = Variable<DateTime>(dataFim.value);
    }
    if (clienteId.present) {
      map['cliente_id'] = Variable<int>(clienteId.value);
    }
    if (imovelId.present) {
      map['imovel_id'] = Variable<int>(imovelId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContratoTableCompanion(')
          ..write('id: $id, ')
          ..write('tipoIntervalo: $tipoIntervalo, ')
          ..write('valor: $valor, ')
          ..write('dataInicio: $dataInicio, ')
          ..write('dataFim: $dataFim, ')
          ..write('clienteId: $clienteId, ')
          ..write('imovelId: $imovelId')
          ..write(')'))
        .toString();
  }
}

class $PagamentoTableTable extends PagamentoTable
    with TableInfo<$PagamentoTableTable, PagamentoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PagamentoTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _tipoPagamentoMeta =
      const VerificationMeta('tipoPagamento');
  @override
  late final GeneratedColumnWithTypeConverter<TipoPagamento, String>
      tipoPagamento = GeneratedColumn<String>(
              'tipo_pagamento', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<TipoPagamento>(
              $PagamentoTableTable.$convertertipoPagamento);
  static const VerificationMeta _valorMeta = const VerificationMeta('valor');
  @override
  late final GeneratedColumn<double> valor = GeneratedColumn<double>(
      'valor', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _contratoIdMeta =
      const VerificationMeta('contratoId');
  @override
  late final GeneratedColumn<int> contratoId = GeneratedColumn<int>(
      'contrato_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES contrato_table (id)'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, tipoPagamento, valor, contratoId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pagamento_table';
  @override
  VerificationContext validateIntegrity(Insertable<PagamentoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_tipoPagamentoMeta, const VerificationResult.success());
    if (data.containsKey('valor')) {
      context.handle(
          _valorMeta, valor.isAcceptableOrUnknown(data['valor']!, _valorMeta));
    } else if (isInserting) {
      context.missing(_valorMeta);
    }
    if (data.containsKey('contrato_id')) {
      context.handle(
          _contratoIdMeta,
          contratoId.isAcceptableOrUnknown(
              data['contrato_id']!, _contratoIdMeta));
    } else if (isInserting) {
      context.missing(_contratoIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PagamentoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PagamentoTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      tipoPagamento: $PagamentoTableTable.$convertertipoPagamento.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}tipo_pagamento'])!),
      valor: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}valor'])!,
      contratoId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}contrato_id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $PagamentoTableTable createAlias(String alias) {
    return $PagamentoTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<TipoPagamento, String, String>
      $convertertipoPagamento =
      const EnumNameConverter<TipoPagamento>(TipoPagamento.values);
}

class PagamentoTableData extends DataClass
    implements Insertable<PagamentoTableData> {
  final int id;
  final TipoPagamento tipoPagamento;
  final double valor;
  final int contratoId;
  final DateTime createdAt;
  const PagamentoTableData(
      {required this.id,
      required this.tipoPagamento,
      required this.valor,
      required this.contratoId,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      map['tipo_pagamento'] = Variable<String>(
          $PagamentoTableTable.$convertertipoPagamento.toSql(tipoPagamento));
    }
    map['valor'] = Variable<double>(valor);
    map['contrato_id'] = Variable<int>(contratoId);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  PagamentoTableCompanion toCompanion(bool nullToAbsent) {
    return PagamentoTableCompanion(
      id: Value(id),
      tipoPagamento: Value(tipoPagamento),
      valor: Value(valor),
      contratoId: Value(contratoId),
      createdAt: Value(createdAt),
    );
  }

  factory PagamentoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PagamentoTableData(
      id: serializer.fromJson<int>(json['id']),
      tipoPagamento: $PagamentoTableTable.$convertertipoPagamento
          .fromJson(serializer.fromJson<String>(json['tipoPagamento'])),
      valor: serializer.fromJson<double>(json['valor']),
      contratoId: serializer.fromJson<int>(json['contratoId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tipoPagamento': serializer.toJson<String>(
          $PagamentoTableTable.$convertertipoPagamento.toJson(tipoPagamento)),
      'valor': serializer.toJson<double>(valor),
      'contratoId': serializer.toJson<int>(contratoId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  PagamentoTableData copyWith(
          {int? id,
          TipoPagamento? tipoPagamento,
          double? valor,
          int? contratoId,
          DateTime? createdAt}) =>
      PagamentoTableData(
        id: id ?? this.id,
        tipoPagamento: tipoPagamento ?? this.tipoPagamento,
        valor: valor ?? this.valor,
        contratoId: contratoId ?? this.contratoId,
        createdAt: createdAt ?? this.createdAt,
      );
  PagamentoTableData copyWithCompanion(PagamentoTableCompanion data) {
    return PagamentoTableData(
      id: data.id.present ? data.id.value : this.id,
      tipoPagamento: data.tipoPagamento.present
          ? data.tipoPagamento.value
          : this.tipoPagamento,
      valor: data.valor.present ? data.valor.value : this.valor,
      contratoId:
          data.contratoId.present ? data.contratoId.value : this.contratoId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PagamentoTableData(')
          ..write('id: $id, ')
          ..write('tipoPagamento: $tipoPagamento, ')
          ..write('valor: $valor, ')
          ..write('contratoId: $contratoId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, tipoPagamento, valor, contratoId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PagamentoTableData &&
          other.id == this.id &&
          other.tipoPagamento == this.tipoPagamento &&
          other.valor == this.valor &&
          other.contratoId == this.contratoId &&
          other.createdAt == this.createdAt);
}

class PagamentoTableCompanion extends UpdateCompanion<PagamentoTableData> {
  final Value<int> id;
  final Value<TipoPagamento> tipoPagamento;
  final Value<double> valor;
  final Value<int> contratoId;
  final Value<DateTime> createdAt;
  const PagamentoTableCompanion({
    this.id = const Value.absent(),
    this.tipoPagamento = const Value.absent(),
    this.valor = const Value.absent(),
    this.contratoId = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  PagamentoTableCompanion.insert({
    this.id = const Value.absent(),
    required TipoPagamento tipoPagamento,
    required double valor,
    required int contratoId,
    this.createdAt = const Value.absent(),
  })  : tipoPagamento = Value(tipoPagamento),
        valor = Value(valor),
        contratoId = Value(contratoId);
  static Insertable<PagamentoTableData> custom({
    Expression<int>? id,
    Expression<String>? tipoPagamento,
    Expression<double>? valor,
    Expression<int>? contratoId,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tipoPagamento != null) 'tipo_pagamento': tipoPagamento,
      if (valor != null) 'valor': valor,
      if (contratoId != null) 'contrato_id': contratoId,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  PagamentoTableCompanion copyWith(
      {Value<int>? id,
      Value<TipoPagamento>? tipoPagamento,
      Value<double>? valor,
      Value<int>? contratoId,
      Value<DateTime>? createdAt}) {
    return PagamentoTableCompanion(
      id: id ?? this.id,
      tipoPagamento: tipoPagamento ?? this.tipoPagamento,
      valor: valor ?? this.valor,
      contratoId: contratoId ?? this.contratoId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tipoPagamento.present) {
      map['tipo_pagamento'] = Variable<String>($PagamentoTableTable
          .$convertertipoPagamento
          .toSql(tipoPagamento.value));
    }
    if (valor.present) {
      map['valor'] = Variable<double>(valor.value);
    }
    if (contratoId.present) {
      map['contrato_id'] = Variable<int>(contratoId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PagamentoTableCompanion(')
          ..write('id: $id, ')
          ..write('tipoPagamento: $tipoPagamento, ')
          ..write('valor: $valor, ')
          ..write('contratoId: $contratoId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$BancoDados extends GeneratedDatabase {
  _$BancoDados(QueryExecutor e) : super(e);
  $BancoDadosManager get managers => $BancoDadosManager(this);
  late final $EnderecoTableTable enderecoTable = $EnderecoTableTable(this);
  late final $ClienteTableTable clienteTable = $ClienteTableTable(this);
  late final $ImovelTableTable imovelTable = $ImovelTableTable(this);
  late final $ComodoTableTable comodoTable = $ComodoTableTable(this);
  late final $ContratoTableTable contratoTable = $ContratoTableTable(this);
  late final $PagamentoTableTable pagamentoTable = $PagamentoTableTable(this);
  late final EnderecoDao enderecoDao = EnderecoDao(this as BancoDados);
  late final ClienteDao clienteDao = ClienteDao(this as BancoDados);
  late final ComodoDao comodoDao = ComodoDao(this as BancoDados);
  late final PagamentoDao pagamentoDao = PagamentoDao(this as BancoDados);
  late final ImovelDao imovelDao = ImovelDao(this as BancoDados);
  late final ContratoDao contratoDao = ContratoDao(this as BancoDados);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        enderecoTable,
        clienteTable,
        imovelTable,
        comodoTable,
        contratoTable,
        pagamentoTable
      ];
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

final class $$EnderecoTableTableReferences
    extends BaseReferences<_$BancoDados, $EnderecoTableTable, Endereco> {
  $$EnderecoTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ImovelTableTable, List<ImovelTableData>>
      _imovelTableRefsTable(_$BancoDados db) =>
          MultiTypedResultKey.fromTable(db.imovelTable,
              aliasName: $_aliasNameGenerator(
                  db.enderecoTable.id, db.imovelTable.enderecoId));

  $$ImovelTableTableProcessedTableManager get imovelTableRefs {
    final manager = $$ImovelTableTableTableManager($_db, $_db.imovelTable)
        .filter((f) => f.enderecoId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_imovelTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

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

  Expression<bool> imovelTableRefs(
      Expression<bool> Function($$ImovelTableTableFilterComposer f) f) {
    final $$ImovelTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.imovelTable,
        getReferencedColumn: (t) => t.enderecoId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ImovelTableTableFilterComposer(
              $db: $db,
              $table: $db.imovelTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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

  Expression<T> imovelTableRefs<T extends Object>(
      Expression<T> Function($$ImovelTableTableAnnotationComposer a) f) {
    final $$ImovelTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.imovelTable,
        getReferencedColumn: (t) => t.enderecoId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ImovelTableTableAnnotationComposer(
              $db: $db,
              $table: $db.imovelTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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
    (Endereco, $$EnderecoTableTableReferences),
    Endereco,
    PrefetchHooks Function({bool imovelTableRefs})> {
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
              .map((e) => (
                    e.readTable(table),
                    $$EnderecoTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({imovelTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (imovelTableRefs) db.imovelTable],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (imovelTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$EnderecoTableTableReferences
                            ._imovelTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$EnderecoTableTableReferences(db, table, p0)
                                .imovelTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.enderecoId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
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
    (Endereco, $$EnderecoTableTableReferences),
    Endereco,
    PrefetchHooks Function({bool imovelTableRefs})>;
typedef $$ClienteTableTableCreateCompanionBuilder = ClienteTableCompanion
    Function({
  Value<int> id,
  required String nome,
  required String cPF,
  required DateTime dataNascimento,
  required Contato contato,
});
typedef $$ClienteTableTableUpdateCompanionBuilder = ClienteTableCompanion
    Function({
  Value<int> id,
  Value<String> nome,
  Value<String> cPF,
  Value<DateTime> dataNascimento,
  Value<Contato> contato,
});

final class $$ClienteTableTableReferences
    extends BaseReferences<_$BancoDados, $ClienteTableTable, ClienteTableData> {
  $$ClienteTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ContratoTableTable, List<ContratoTableData>>
      _contratoTableRefsTable(_$BancoDados db) =>
          MultiTypedResultKey.fromTable(db.contratoTable,
              aliasName: $_aliasNameGenerator(
                  db.clienteTable.id, db.contratoTable.clienteId));

  $$ContratoTableTableProcessedTableManager get contratoTableRefs {
    final manager = $$ContratoTableTableTableManager($_db, $_db.contratoTable)
        .filter((f) => f.clienteId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_contratoTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ClienteTableTableFilterComposer
    extends Composer<_$BancoDados, $ClienteTableTable> {
  $$ClienteTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cPF => $composableBuilder(
      column: $table.cPF, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dataNascimento => $composableBuilder(
      column: $table.dataNascimento,
      builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Contato, Contato, String> get contato =>
      $composableBuilder(
          column: $table.contato,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  Expression<bool> contratoTableRefs(
      Expression<bool> Function($$ContratoTableTableFilterComposer f) f) {
    final $$ContratoTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.contratoTable,
        getReferencedColumn: (t) => t.clienteId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ContratoTableTableFilterComposer(
              $db: $db,
              $table: $db.contratoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ClienteTableTableOrderingComposer
    extends Composer<_$BancoDados, $ClienteTableTable> {
  $$ClienteTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cPF => $composableBuilder(
      column: $table.cPF, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dataNascimento => $composableBuilder(
      column: $table.dataNascimento,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contato => $composableBuilder(
      column: $table.contato, builder: (column) => ColumnOrderings(column));
}

class $$ClienteTableTableAnnotationComposer
    extends Composer<_$BancoDados, $ClienteTableTable> {
  $$ClienteTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get cPF =>
      $composableBuilder(column: $table.cPF, builder: (column) => column);

  GeneratedColumn<DateTime> get dataNascimento => $composableBuilder(
      column: $table.dataNascimento, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Contato, String> get contato =>
      $composableBuilder(column: $table.contato, builder: (column) => column);

  Expression<T> contratoTableRefs<T extends Object>(
      Expression<T> Function($$ContratoTableTableAnnotationComposer a) f) {
    final $$ContratoTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.contratoTable,
        getReferencedColumn: (t) => t.clienteId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ContratoTableTableAnnotationComposer(
              $db: $db,
              $table: $db.contratoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ClienteTableTableTableManager extends RootTableManager<
    _$BancoDados,
    $ClienteTableTable,
    ClienteTableData,
    $$ClienteTableTableFilterComposer,
    $$ClienteTableTableOrderingComposer,
    $$ClienteTableTableAnnotationComposer,
    $$ClienteTableTableCreateCompanionBuilder,
    $$ClienteTableTableUpdateCompanionBuilder,
    (ClienteTableData, $$ClienteTableTableReferences),
    ClienteTableData,
    PrefetchHooks Function({bool contratoTableRefs})> {
  $$ClienteTableTableTableManager(_$BancoDados db, $ClienteTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClienteTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClienteTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClienteTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> nome = const Value.absent(),
            Value<String> cPF = const Value.absent(),
            Value<DateTime> dataNascimento = const Value.absent(),
            Value<Contato> contato = const Value.absent(),
          }) =>
              ClienteTableCompanion(
            id: id,
            nome: nome,
            cPF: cPF,
            dataNascimento: dataNascimento,
            contato: contato,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String nome,
            required String cPF,
            required DateTime dataNascimento,
            required Contato contato,
          }) =>
              ClienteTableCompanion.insert(
            id: id,
            nome: nome,
            cPF: cPF,
            dataNascimento: dataNascimento,
            contato: contato,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ClienteTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({contratoTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (contratoTableRefs) db.contratoTable
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (contratoTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ClienteTableTableReferences
                            ._contratoTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ClienteTableTableReferences(db, table, p0)
                                .contratoTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.clienteId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ClienteTableTableProcessedTableManager = ProcessedTableManager<
    _$BancoDados,
    $ClienteTableTable,
    ClienteTableData,
    $$ClienteTableTableFilterComposer,
    $$ClienteTableTableOrderingComposer,
    $$ClienteTableTableAnnotationComposer,
    $$ClienteTableTableCreateCompanionBuilder,
    $$ClienteTableTableUpdateCompanionBuilder,
    (ClienteTableData, $$ClienteTableTableReferences),
    ClienteTableData,
    PrefetchHooks Function({bool contratoTableRefs})>;
typedef $$ImovelTableTableCreateCompanionBuilder = ImovelTableCompanion
    Function({
  Value<int> id,
  required String nome,
  required String descricao,
  required int enderecoId,
});
typedef $$ImovelTableTableUpdateCompanionBuilder = ImovelTableCompanion
    Function({
  Value<int> id,
  Value<String> nome,
  Value<String> descricao,
  Value<int> enderecoId,
});

final class $$ImovelTableTableReferences
    extends BaseReferences<_$BancoDados, $ImovelTableTable, ImovelTableData> {
  $$ImovelTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $EnderecoTableTable _enderecoIdTable(_$BancoDados db) =>
      db.enderecoTable.createAlias(
          $_aliasNameGenerator(db.imovelTable.enderecoId, db.enderecoTable.id));

  $$EnderecoTableTableProcessedTableManager get enderecoId {
    final manager = $$EnderecoTableTableTableManager($_db, $_db.enderecoTable)
        .filter((f) => f.id($_item.enderecoId));
    final item = $_typedResult.readTableOrNull(_enderecoIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$ComodoTableTable, List<ComodoTableData>>
      _comodoTableRefsTable(_$BancoDados db) => MultiTypedResultKey.fromTable(
          db.comodoTable,
          aliasName:
              $_aliasNameGenerator(db.imovelTable.id, db.comodoTable.imovelId));

  $$ComodoTableTableProcessedTableManager get comodoTableRefs {
    final manager = $$ComodoTableTableTableManager($_db, $_db.comodoTable)
        .filter((f) => f.imovelId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_comodoTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ContratoTableTable, List<ContratoTableData>>
      _contratoTableRefsTable(_$BancoDados db) =>
          MultiTypedResultKey.fromTable(db.contratoTable,
              aliasName: $_aliasNameGenerator(
                  db.imovelTable.id, db.contratoTable.imovelId));

  $$ContratoTableTableProcessedTableManager get contratoTableRefs {
    final manager = $$ContratoTableTableTableManager($_db, $_db.contratoTable)
        .filter((f) => f.imovelId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_contratoTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ImovelTableTableFilterComposer
    extends Composer<_$BancoDados, $ImovelTableTable> {
  $$ImovelTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get descricao => $composableBuilder(
      column: $table.descricao, builder: (column) => ColumnFilters(column));

  $$EnderecoTableTableFilterComposer get enderecoId {
    final $$EnderecoTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.enderecoId,
        referencedTable: $db.enderecoTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EnderecoTableTableFilterComposer(
              $db: $db,
              $table: $db.enderecoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> comodoTableRefs(
      Expression<bool> Function($$ComodoTableTableFilterComposer f) f) {
    final $$ComodoTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.comodoTable,
        getReferencedColumn: (t) => t.imovelId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ComodoTableTableFilterComposer(
              $db: $db,
              $table: $db.comodoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> contratoTableRefs(
      Expression<bool> Function($$ContratoTableTableFilterComposer f) f) {
    final $$ContratoTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.contratoTable,
        getReferencedColumn: (t) => t.imovelId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ContratoTableTableFilterComposer(
              $db: $db,
              $table: $db.contratoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ImovelTableTableOrderingComposer
    extends Composer<_$BancoDados, $ImovelTableTable> {
  $$ImovelTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get descricao => $composableBuilder(
      column: $table.descricao, builder: (column) => ColumnOrderings(column));

  $$EnderecoTableTableOrderingComposer get enderecoId {
    final $$EnderecoTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.enderecoId,
        referencedTable: $db.enderecoTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EnderecoTableTableOrderingComposer(
              $db: $db,
              $table: $db.enderecoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ImovelTableTableAnnotationComposer
    extends Composer<_$BancoDados, $ImovelTableTable> {
  $$ImovelTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get descricao =>
      $composableBuilder(column: $table.descricao, builder: (column) => column);

  $$EnderecoTableTableAnnotationComposer get enderecoId {
    final $$EnderecoTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.enderecoId,
        referencedTable: $db.enderecoTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EnderecoTableTableAnnotationComposer(
              $db: $db,
              $table: $db.enderecoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> comodoTableRefs<T extends Object>(
      Expression<T> Function($$ComodoTableTableAnnotationComposer a) f) {
    final $$ComodoTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.comodoTable,
        getReferencedColumn: (t) => t.imovelId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ComodoTableTableAnnotationComposer(
              $db: $db,
              $table: $db.comodoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> contratoTableRefs<T extends Object>(
      Expression<T> Function($$ContratoTableTableAnnotationComposer a) f) {
    final $$ContratoTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.contratoTable,
        getReferencedColumn: (t) => t.imovelId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ContratoTableTableAnnotationComposer(
              $db: $db,
              $table: $db.contratoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ImovelTableTableTableManager extends RootTableManager<
    _$BancoDados,
    $ImovelTableTable,
    ImovelTableData,
    $$ImovelTableTableFilterComposer,
    $$ImovelTableTableOrderingComposer,
    $$ImovelTableTableAnnotationComposer,
    $$ImovelTableTableCreateCompanionBuilder,
    $$ImovelTableTableUpdateCompanionBuilder,
    (ImovelTableData, $$ImovelTableTableReferences),
    ImovelTableData,
    PrefetchHooks Function(
        {bool enderecoId, bool comodoTableRefs, bool contratoTableRefs})> {
  $$ImovelTableTableTableManager(_$BancoDados db, $ImovelTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ImovelTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ImovelTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ImovelTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> nome = const Value.absent(),
            Value<String> descricao = const Value.absent(),
            Value<int> enderecoId = const Value.absent(),
          }) =>
              ImovelTableCompanion(
            id: id,
            nome: nome,
            descricao: descricao,
            enderecoId: enderecoId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String nome,
            required String descricao,
            required int enderecoId,
          }) =>
              ImovelTableCompanion.insert(
            id: id,
            nome: nome,
            descricao: descricao,
            enderecoId: enderecoId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ImovelTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {enderecoId = false,
              comodoTableRefs = false,
              contratoTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (comodoTableRefs) db.comodoTable,
                if (contratoTableRefs) db.contratoTable
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (enderecoId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.enderecoId,
                    referencedTable:
                        $$ImovelTableTableReferences._enderecoIdTable(db),
                    referencedColumn:
                        $$ImovelTableTableReferences._enderecoIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (comodoTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ImovelTableTableReferences
                            ._comodoTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ImovelTableTableReferences(db, table, p0)
                                .comodoTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.imovelId == item.id),
                        typedResults: items),
                  if (contratoTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ImovelTableTableReferences
                            ._contratoTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ImovelTableTableReferences(db, table, p0)
                                .contratoTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.imovelId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ImovelTableTableProcessedTableManager = ProcessedTableManager<
    _$BancoDados,
    $ImovelTableTable,
    ImovelTableData,
    $$ImovelTableTableFilterComposer,
    $$ImovelTableTableOrderingComposer,
    $$ImovelTableTableAnnotationComposer,
    $$ImovelTableTableCreateCompanionBuilder,
    $$ImovelTableTableUpdateCompanionBuilder,
    (ImovelTableData, $$ImovelTableTableReferences),
    ImovelTableData,
    PrefetchHooks Function(
        {bool enderecoId, bool comodoTableRefs, bool contratoTableRefs})>;
typedef $$ComodoTableTableCreateCompanionBuilder = ComodoTableCompanion
    Function({
  Value<int> id,
  required TipoComodo tipoComodo,
  required int quantidade,
  required int imovelId,
});
typedef $$ComodoTableTableUpdateCompanionBuilder = ComodoTableCompanion
    Function({
  Value<int> id,
  Value<TipoComodo> tipoComodo,
  Value<int> quantidade,
  Value<int> imovelId,
});

final class $$ComodoTableTableReferences
    extends BaseReferences<_$BancoDados, $ComodoTableTable, ComodoTableData> {
  $$ComodoTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ImovelTableTable _imovelIdTable(_$BancoDados db) =>
      db.imovelTable.createAlias(
          $_aliasNameGenerator(db.comodoTable.imovelId, db.imovelTable.id));

  $$ImovelTableTableProcessedTableManager get imovelId {
    final manager = $$ImovelTableTableTableManager($_db, $_db.imovelTable)
        .filter((f) => f.id($_item.imovelId));
    final item = $_typedResult.readTableOrNull(_imovelIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ComodoTableTableFilterComposer
    extends Composer<_$BancoDados, $ComodoTableTable> {
  $$ComodoTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<TipoComodo, TipoComodo, String>
      get tipoComodo => $composableBuilder(
          column: $table.tipoComodo,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get quantidade => $composableBuilder(
      column: $table.quantidade, builder: (column) => ColumnFilters(column));

  $$ImovelTableTableFilterComposer get imovelId {
    final $$ImovelTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.imovelId,
        referencedTable: $db.imovelTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ImovelTableTableFilterComposer(
              $db: $db,
              $table: $db.imovelTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ComodoTableTableOrderingComposer
    extends Composer<_$BancoDados, $ComodoTableTable> {
  $$ComodoTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tipoComodo => $composableBuilder(
      column: $table.tipoComodo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get quantidade => $composableBuilder(
      column: $table.quantidade, builder: (column) => ColumnOrderings(column));

  $$ImovelTableTableOrderingComposer get imovelId {
    final $$ImovelTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.imovelId,
        referencedTable: $db.imovelTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ImovelTableTableOrderingComposer(
              $db: $db,
              $table: $db.imovelTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ComodoTableTableAnnotationComposer
    extends Composer<_$BancoDados, $ComodoTableTable> {
  $$ComodoTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<TipoComodo, String> get tipoComodo =>
      $composableBuilder(
          column: $table.tipoComodo, builder: (column) => column);

  GeneratedColumn<int> get quantidade => $composableBuilder(
      column: $table.quantidade, builder: (column) => column);

  $$ImovelTableTableAnnotationComposer get imovelId {
    final $$ImovelTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.imovelId,
        referencedTable: $db.imovelTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ImovelTableTableAnnotationComposer(
              $db: $db,
              $table: $db.imovelTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ComodoTableTableTableManager extends RootTableManager<
    _$BancoDados,
    $ComodoTableTable,
    ComodoTableData,
    $$ComodoTableTableFilterComposer,
    $$ComodoTableTableOrderingComposer,
    $$ComodoTableTableAnnotationComposer,
    $$ComodoTableTableCreateCompanionBuilder,
    $$ComodoTableTableUpdateCompanionBuilder,
    (ComodoTableData, $$ComodoTableTableReferences),
    ComodoTableData,
    PrefetchHooks Function({bool imovelId})> {
  $$ComodoTableTableTableManager(_$BancoDados db, $ComodoTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ComodoTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ComodoTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ComodoTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<TipoComodo> tipoComodo = const Value.absent(),
            Value<int> quantidade = const Value.absent(),
            Value<int> imovelId = const Value.absent(),
          }) =>
              ComodoTableCompanion(
            id: id,
            tipoComodo: tipoComodo,
            quantidade: quantidade,
            imovelId: imovelId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required TipoComodo tipoComodo,
            required int quantidade,
            required int imovelId,
          }) =>
              ComodoTableCompanion.insert(
            id: id,
            tipoComodo: tipoComodo,
            quantidade: quantidade,
            imovelId: imovelId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ComodoTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({imovelId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (imovelId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.imovelId,
                    referencedTable:
                        $$ComodoTableTableReferences._imovelIdTable(db),
                    referencedColumn:
                        $$ComodoTableTableReferences._imovelIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ComodoTableTableProcessedTableManager = ProcessedTableManager<
    _$BancoDados,
    $ComodoTableTable,
    ComodoTableData,
    $$ComodoTableTableFilterComposer,
    $$ComodoTableTableOrderingComposer,
    $$ComodoTableTableAnnotationComposer,
    $$ComodoTableTableCreateCompanionBuilder,
    $$ComodoTableTableUpdateCompanionBuilder,
    (ComodoTableData, $$ComodoTableTableReferences),
    ComodoTableData,
    PrefetchHooks Function({bool imovelId})>;
typedef $$ContratoTableTableCreateCompanionBuilder = ContratoTableCompanion
    Function({
  Value<int> id,
  required TipoIntervalo tipoIntervalo,
  required double valor,
  required DateTime dataInicio,
  required DateTime dataFim,
  required int clienteId,
  required int imovelId,
});
typedef $$ContratoTableTableUpdateCompanionBuilder = ContratoTableCompanion
    Function({
  Value<int> id,
  Value<TipoIntervalo> tipoIntervalo,
  Value<double> valor,
  Value<DateTime> dataInicio,
  Value<DateTime> dataFim,
  Value<int> clienteId,
  Value<int> imovelId,
});

final class $$ContratoTableTableReferences extends BaseReferences<_$BancoDados,
    $ContratoTableTable, ContratoTableData> {
  $$ContratoTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ClienteTableTable _clienteIdTable(_$BancoDados db) =>
      db.clienteTable.createAlias(
          $_aliasNameGenerator(db.contratoTable.clienteId, db.clienteTable.id));

  $$ClienteTableTableProcessedTableManager get clienteId {
    final manager = $$ClienteTableTableTableManager($_db, $_db.clienteTable)
        .filter((f) => f.id($_item.clienteId));
    final item = $_typedResult.readTableOrNull(_clienteIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $ImovelTableTable _imovelIdTable(_$BancoDados db) =>
      db.imovelTable.createAlias(
          $_aliasNameGenerator(db.contratoTable.imovelId, db.imovelTable.id));

  $$ImovelTableTableProcessedTableManager get imovelId {
    final manager = $$ImovelTableTableTableManager($_db, $_db.imovelTable)
        .filter((f) => f.id($_item.imovelId));
    final item = $_typedResult.readTableOrNull(_imovelIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$PagamentoTableTable, List<PagamentoTableData>>
      _pagamentoTableRefsTable(_$BancoDados db) =>
          MultiTypedResultKey.fromTable(db.pagamentoTable,
              aliasName: $_aliasNameGenerator(
                  db.contratoTable.id, db.pagamentoTable.contratoId));

  $$PagamentoTableTableProcessedTableManager get pagamentoTableRefs {
    final manager = $$PagamentoTableTableTableManager($_db, $_db.pagamentoTable)
        .filter((f) => f.contratoId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_pagamentoTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ContratoTableTableFilterComposer
    extends Composer<_$BancoDados, $ContratoTableTable> {
  $$ContratoTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<TipoIntervalo, TipoIntervalo, String>
      get tipoIntervalo => $composableBuilder(
          column: $table.tipoIntervalo,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<double> get valor => $composableBuilder(
      column: $table.valor, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dataInicio => $composableBuilder(
      column: $table.dataInicio, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dataFim => $composableBuilder(
      column: $table.dataFim, builder: (column) => ColumnFilters(column));

  $$ClienteTableTableFilterComposer get clienteId {
    final $$ClienteTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.clienteId,
        referencedTable: $db.clienteTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClienteTableTableFilterComposer(
              $db: $db,
              $table: $db.clienteTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ImovelTableTableFilterComposer get imovelId {
    final $$ImovelTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.imovelId,
        referencedTable: $db.imovelTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ImovelTableTableFilterComposer(
              $db: $db,
              $table: $db.imovelTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> pagamentoTableRefs(
      Expression<bool> Function($$PagamentoTableTableFilterComposer f) f) {
    final $$PagamentoTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.pagamentoTable,
        getReferencedColumn: (t) => t.contratoId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PagamentoTableTableFilterComposer(
              $db: $db,
              $table: $db.pagamentoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ContratoTableTableOrderingComposer
    extends Composer<_$BancoDados, $ContratoTableTable> {
  $$ContratoTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tipoIntervalo => $composableBuilder(
      column: $table.tipoIntervalo,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get valor => $composableBuilder(
      column: $table.valor, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dataInicio => $composableBuilder(
      column: $table.dataInicio, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dataFim => $composableBuilder(
      column: $table.dataFim, builder: (column) => ColumnOrderings(column));

  $$ClienteTableTableOrderingComposer get clienteId {
    final $$ClienteTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.clienteId,
        referencedTable: $db.clienteTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClienteTableTableOrderingComposer(
              $db: $db,
              $table: $db.clienteTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ImovelTableTableOrderingComposer get imovelId {
    final $$ImovelTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.imovelId,
        referencedTable: $db.imovelTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ImovelTableTableOrderingComposer(
              $db: $db,
              $table: $db.imovelTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ContratoTableTableAnnotationComposer
    extends Composer<_$BancoDados, $ContratoTableTable> {
  $$ContratoTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<TipoIntervalo, String> get tipoIntervalo =>
      $composableBuilder(
          column: $table.tipoIntervalo, builder: (column) => column);

  GeneratedColumn<double> get valor =>
      $composableBuilder(column: $table.valor, builder: (column) => column);

  GeneratedColumn<DateTime> get dataInicio => $composableBuilder(
      column: $table.dataInicio, builder: (column) => column);

  GeneratedColumn<DateTime> get dataFim =>
      $composableBuilder(column: $table.dataFim, builder: (column) => column);

  $$ClienteTableTableAnnotationComposer get clienteId {
    final $$ClienteTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.clienteId,
        referencedTable: $db.clienteTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClienteTableTableAnnotationComposer(
              $db: $db,
              $table: $db.clienteTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ImovelTableTableAnnotationComposer get imovelId {
    final $$ImovelTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.imovelId,
        referencedTable: $db.imovelTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ImovelTableTableAnnotationComposer(
              $db: $db,
              $table: $db.imovelTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> pagamentoTableRefs<T extends Object>(
      Expression<T> Function($$PagamentoTableTableAnnotationComposer a) f) {
    final $$PagamentoTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.pagamentoTable,
        getReferencedColumn: (t) => t.contratoId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PagamentoTableTableAnnotationComposer(
              $db: $db,
              $table: $db.pagamentoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ContratoTableTableTableManager extends RootTableManager<
    _$BancoDados,
    $ContratoTableTable,
    ContratoTableData,
    $$ContratoTableTableFilterComposer,
    $$ContratoTableTableOrderingComposer,
    $$ContratoTableTableAnnotationComposer,
    $$ContratoTableTableCreateCompanionBuilder,
    $$ContratoTableTableUpdateCompanionBuilder,
    (ContratoTableData, $$ContratoTableTableReferences),
    ContratoTableData,
    PrefetchHooks Function(
        {bool clienteId, bool imovelId, bool pagamentoTableRefs})> {
  $$ContratoTableTableTableManager(_$BancoDados db, $ContratoTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ContratoTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ContratoTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ContratoTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<TipoIntervalo> tipoIntervalo = const Value.absent(),
            Value<double> valor = const Value.absent(),
            Value<DateTime> dataInicio = const Value.absent(),
            Value<DateTime> dataFim = const Value.absent(),
            Value<int> clienteId = const Value.absent(),
            Value<int> imovelId = const Value.absent(),
          }) =>
              ContratoTableCompanion(
            id: id,
            tipoIntervalo: tipoIntervalo,
            valor: valor,
            dataInicio: dataInicio,
            dataFim: dataFim,
            clienteId: clienteId,
            imovelId: imovelId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required TipoIntervalo tipoIntervalo,
            required double valor,
            required DateTime dataInicio,
            required DateTime dataFim,
            required int clienteId,
            required int imovelId,
          }) =>
              ContratoTableCompanion.insert(
            id: id,
            tipoIntervalo: tipoIntervalo,
            valor: valor,
            dataInicio: dataInicio,
            dataFim: dataFim,
            clienteId: clienteId,
            imovelId: imovelId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ContratoTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {clienteId = false,
              imovelId = false,
              pagamentoTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (pagamentoTableRefs) db.pagamentoTable
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (clienteId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.clienteId,
                    referencedTable:
                        $$ContratoTableTableReferences._clienteIdTable(db),
                    referencedColumn:
                        $$ContratoTableTableReferences._clienteIdTable(db).id,
                  ) as T;
                }
                if (imovelId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.imovelId,
                    referencedTable:
                        $$ContratoTableTableReferences._imovelIdTable(db),
                    referencedColumn:
                        $$ContratoTableTableReferences._imovelIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (pagamentoTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ContratoTableTableReferences
                            ._pagamentoTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ContratoTableTableReferences(db, table, p0)
                                .pagamentoTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.contratoId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ContratoTableTableProcessedTableManager = ProcessedTableManager<
    _$BancoDados,
    $ContratoTableTable,
    ContratoTableData,
    $$ContratoTableTableFilterComposer,
    $$ContratoTableTableOrderingComposer,
    $$ContratoTableTableAnnotationComposer,
    $$ContratoTableTableCreateCompanionBuilder,
    $$ContratoTableTableUpdateCompanionBuilder,
    (ContratoTableData, $$ContratoTableTableReferences),
    ContratoTableData,
    PrefetchHooks Function(
        {bool clienteId, bool imovelId, bool pagamentoTableRefs})>;
typedef $$PagamentoTableTableCreateCompanionBuilder = PagamentoTableCompanion
    Function({
  Value<int> id,
  required TipoPagamento tipoPagamento,
  required double valor,
  required int contratoId,
  Value<DateTime> createdAt,
});
typedef $$PagamentoTableTableUpdateCompanionBuilder = PagamentoTableCompanion
    Function({
  Value<int> id,
  Value<TipoPagamento> tipoPagamento,
  Value<double> valor,
  Value<int> contratoId,
  Value<DateTime> createdAt,
});

final class $$PagamentoTableTableReferences extends BaseReferences<_$BancoDados,
    $PagamentoTableTable, PagamentoTableData> {
  $$PagamentoTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ContratoTableTable _contratoIdTable(_$BancoDados db) =>
      db.contratoTable.createAlias($_aliasNameGenerator(
          db.pagamentoTable.contratoId, db.contratoTable.id));

  $$ContratoTableTableProcessedTableManager get contratoId {
    final manager = $$ContratoTableTableTableManager($_db, $_db.contratoTable)
        .filter((f) => f.id($_item.contratoId));
    final item = $_typedResult.readTableOrNull(_contratoIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PagamentoTableTableFilterComposer
    extends Composer<_$BancoDados, $PagamentoTableTable> {
  $$PagamentoTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<TipoPagamento, TipoPagamento, String>
      get tipoPagamento => $composableBuilder(
          column: $table.tipoPagamento,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<double> get valor => $composableBuilder(
      column: $table.valor, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$ContratoTableTableFilterComposer get contratoId {
    final $$ContratoTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.contratoId,
        referencedTable: $db.contratoTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ContratoTableTableFilterComposer(
              $db: $db,
              $table: $db.contratoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PagamentoTableTableOrderingComposer
    extends Composer<_$BancoDados, $PagamentoTableTable> {
  $$PagamentoTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tipoPagamento => $composableBuilder(
      column: $table.tipoPagamento,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get valor => $composableBuilder(
      column: $table.valor, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$ContratoTableTableOrderingComposer get contratoId {
    final $$ContratoTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.contratoId,
        referencedTable: $db.contratoTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ContratoTableTableOrderingComposer(
              $db: $db,
              $table: $db.contratoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PagamentoTableTableAnnotationComposer
    extends Composer<_$BancoDados, $PagamentoTableTable> {
  $$PagamentoTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<TipoPagamento, String> get tipoPagamento =>
      $composableBuilder(
          column: $table.tipoPagamento, builder: (column) => column);

  GeneratedColumn<double> get valor =>
      $composableBuilder(column: $table.valor, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ContratoTableTableAnnotationComposer get contratoId {
    final $$ContratoTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.contratoId,
        referencedTable: $db.contratoTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ContratoTableTableAnnotationComposer(
              $db: $db,
              $table: $db.contratoTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PagamentoTableTableTableManager extends RootTableManager<
    _$BancoDados,
    $PagamentoTableTable,
    PagamentoTableData,
    $$PagamentoTableTableFilterComposer,
    $$PagamentoTableTableOrderingComposer,
    $$PagamentoTableTableAnnotationComposer,
    $$PagamentoTableTableCreateCompanionBuilder,
    $$PagamentoTableTableUpdateCompanionBuilder,
    (PagamentoTableData, $$PagamentoTableTableReferences),
    PagamentoTableData,
    PrefetchHooks Function({bool contratoId})> {
  $$PagamentoTableTableTableManager(_$BancoDados db, $PagamentoTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PagamentoTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PagamentoTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PagamentoTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<TipoPagamento> tipoPagamento = const Value.absent(),
            Value<double> valor = const Value.absent(),
            Value<int> contratoId = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              PagamentoTableCompanion(
            id: id,
            tipoPagamento: tipoPagamento,
            valor: valor,
            contratoId: contratoId,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required TipoPagamento tipoPagamento,
            required double valor,
            required int contratoId,
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              PagamentoTableCompanion.insert(
            id: id,
            tipoPagamento: tipoPagamento,
            valor: valor,
            contratoId: contratoId,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PagamentoTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({contratoId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (contratoId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.contratoId,
                    referencedTable:
                        $$PagamentoTableTableReferences._contratoIdTable(db),
                    referencedColumn:
                        $$PagamentoTableTableReferences._contratoIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PagamentoTableTableProcessedTableManager = ProcessedTableManager<
    _$BancoDados,
    $PagamentoTableTable,
    PagamentoTableData,
    $$PagamentoTableTableFilterComposer,
    $$PagamentoTableTableOrderingComposer,
    $$PagamentoTableTableAnnotationComposer,
    $$PagamentoTableTableCreateCompanionBuilder,
    $$PagamentoTableTableUpdateCompanionBuilder,
    (PagamentoTableData, $$PagamentoTableTableReferences),
    PagamentoTableData,
    PrefetchHooks Function({bool contratoId})>;

class $BancoDadosManager {
  final _$BancoDados _db;
  $BancoDadosManager(this._db);
  $$EnderecoTableTableTableManager get enderecoTable =>
      $$EnderecoTableTableTableManager(_db, _db.enderecoTable);
  $$ClienteTableTableTableManager get clienteTable =>
      $$ClienteTableTableTableManager(_db, _db.clienteTable);
  $$ImovelTableTableTableManager get imovelTable =>
      $$ImovelTableTableTableManager(_db, _db.imovelTable);
  $$ComodoTableTableTableManager get comodoTable =>
      $$ComodoTableTableTableManager(_db, _db.comodoTable);
  $$ContratoTableTableTableManager get contratoTable =>
      $$ContratoTableTableTableManager(_db, _db.contratoTable);
  $$PagamentoTableTableTableManager get pagamentoTable =>
      $$PagamentoTableTableTableManager(_db, _db.pagamentoTable);
}
