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
    with TableInfo<$ClienteTableTable, Cliente> {
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
  static const VerificationMeta _ruaMeta = const VerificationMeta('rua');
  @override
  late final GeneratedColumn<String> rua = GeneratedColumn<String>(
      'rua', aliasedName, false,
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
      [id, nome, cPF, rua, dataNascimento, contato];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cliente_table';
  @override
  VerificationContext validateIntegrity(Insertable<Cliente> instance,
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
    if (data.containsKey('rua')) {
      context.handle(
          _ruaMeta, rua.isAcceptableOrUnknown(data['rua']!, _ruaMeta));
    } else if (isInserting) {
      context.missing(_ruaMeta);
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
  Cliente map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Cliente(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      cPF: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}c_p_f'])!,
      contato: $ClienteTableTable.$convertercontato.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contato'])!),
      dataNascimento: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}data_nascimento'])!,
    );
  }

  @override
  $ClienteTableTable createAlias(String alias) {
    return $ClienteTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Contato, String, String> $convertercontato =
      GenericConverter<Contato>((value) => Contato.fromJson(value));
}

class ClienteTableCompanion extends UpdateCompanion<Cliente> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> cPF;
  final Value<String> rua;
  final Value<DateTime> dataNascimento;
  final Value<Contato> contato;
  const ClienteTableCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.cPF = const Value.absent(),
    this.rua = const Value.absent(),
    this.dataNascimento = const Value.absent(),
    this.contato = const Value.absent(),
  });
  ClienteTableCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required String cPF,
    required String rua,
    required DateTime dataNascimento,
    required Contato contato,
  })  : nome = Value(nome),
        cPF = Value(cPF),
        rua = Value(rua),
        dataNascimento = Value(dataNascimento),
        contato = Value(contato);
  static Insertable<Cliente> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? cPF,
    Expression<String>? rua,
    Expression<DateTime>? dataNascimento,
    Expression<String>? contato,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (cPF != null) 'c_p_f': cPF,
      if (rua != null) 'rua': rua,
      if (dataNascimento != null) 'data_nascimento': dataNascimento,
      if (contato != null) 'contato': contato,
    });
  }

  ClienteTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? nome,
      Value<String>? cPF,
      Value<String>? rua,
      Value<DateTime>? dataNascimento,
      Value<Contato>? contato}) {
    return ClienteTableCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      cPF: cPF ?? this.cPF,
      rua: rua ?? this.rua,
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
    if (rua.present) {
      map['rua'] = Variable<String>(rua.value);
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
          ..write('rua: $rua, ')
          ..write('dataNascimento: $dataNascimento, ')
          ..write('contato: $contato')
          ..write(')'))
        .toString();
  }
}

class $ComodoTableTable extends ComodoTable
    with TableInfo<$ComodoTableTable, Comodo> {
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
  @override
  List<GeneratedColumn> get $columns => [id, tipoComodo, quantidade];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'comodo_table';
  @override
  VerificationContext validateIntegrity(Insertable<Comodo> instance,
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Comodo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Comodo(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      tipoComodo: $ComodoTableTable.$convertertipoComodo.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}tipo_comodo'])!),
      quantidade: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantidade'])!,
    );
  }

  @override
  $ComodoTableTable createAlias(String alias) {
    return $ComodoTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<TipoComodo, String, String> $convertertipoComodo =
      const EnumNameConverter<TipoComodo>(TipoComodo.values);
}

class ComodoTableCompanion extends UpdateCompanion<Comodo> {
  final Value<int> id;
  final Value<TipoComodo> tipoComodo;
  final Value<int> quantidade;
  const ComodoTableCompanion({
    this.id = const Value.absent(),
    this.tipoComodo = const Value.absent(),
    this.quantidade = const Value.absent(),
  });
  ComodoTableCompanion.insert({
    this.id = const Value.absent(),
    required TipoComodo tipoComodo,
    required int quantidade,
  })  : tipoComodo = Value(tipoComodo),
        quantidade = Value(quantidade);
  static Insertable<Comodo> custom({
    Expression<int>? id,
    Expression<String>? tipoComodo,
    Expression<int>? quantidade,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tipoComodo != null) 'tipo_comodo': tipoComodo,
      if (quantidade != null) 'quantidade': quantidade,
    });
  }

  ComodoTableCompanion copyWith(
      {Value<int>? id, Value<TipoComodo>? tipoComodo, Value<int>? quantidade}) {
    return ComodoTableCompanion(
      id: id ?? this.id,
      tipoComodo: tipoComodo ?? this.tipoComodo,
      quantidade: quantidade ?? this.quantidade,
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ComodoTableCompanion(')
          ..write('id: $id, ')
          ..write('tipoComodo: $tipoComodo, ')
          ..write('quantidade: $quantidade')
          ..write(')'))
        .toString();
  }
}

class $PagamentoTableTable extends PagamentoTable
    with TableInfo<$PagamentoTableTable, Pagamento> {
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
  @override
  List<GeneratedColumn> get $columns => [id, tipoPagamento, valor];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pagamento_table';
  @override
  VerificationContext validateIntegrity(Insertable<Pagamento> instance,
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Pagamento map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Pagamento(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      valor: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}valor'])!,
      tipoPagamento: $PagamentoTableTable.$convertertipoPagamento.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}tipo_pagamento'])!),
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

class PagamentoTableCompanion extends UpdateCompanion<Pagamento> {
  final Value<int> id;
  final Value<TipoPagamento> tipoPagamento;
  final Value<double> valor;
  const PagamentoTableCompanion({
    this.id = const Value.absent(),
    this.tipoPagamento = const Value.absent(),
    this.valor = const Value.absent(),
  });
  PagamentoTableCompanion.insert({
    this.id = const Value.absent(),
    required TipoPagamento tipoPagamento,
    required double valor,
  })  : tipoPagamento = Value(tipoPagamento),
        valor = Value(valor);
  static Insertable<Pagamento> custom({
    Expression<int>? id,
    Expression<String>? tipoPagamento,
    Expression<double>? valor,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tipoPagamento != null) 'tipo_pagamento': tipoPagamento,
      if (valor != null) 'valor': valor,
    });
  }

  PagamentoTableCompanion copyWith(
      {Value<int>? id,
      Value<TipoPagamento>? tipoPagamento,
      Value<double>? valor}) {
    return PagamentoTableCompanion(
      id: id ?? this.id,
      tipoPagamento: tipoPagamento ?? this.tipoPagamento,
      valor: valor ?? this.valor,
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PagamentoTableCompanion(')
          ..write('id: $id, ')
          ..write('tipoPagamento: $tipoPagamento, ')
          ..write('valor: $valor')
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
  static const VerificationMeta _diaPagamentoMeta =
      const VerificationMeta('diaPagamento');
  @override
  late final GeneratedColumn<int> diaPagamento = GeneratedColumn<int>(
      'dia_pagamento', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _mesPagamentoMeta =
      const VerificationMeta('mesPagamento');
  @override
  late final GeneratedColumn<int> mesPagamento = GeneratedColumn<int>(
      'mes_pagamento', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, tipoIntervalo, dataInicio, dataFim, diaPagamento, mesPagamento];
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
    if (data.containsKey('dia_pagamento')) {
      context.handle(
          _diaPagamentoMeta,
          diaPagamento.isAcceptableOrUnknown(
              data['dia_pagamento']!, _diaPagamentoMeta));
    } else if (isInserting) {
      context.missing(_diaPagamentoMeta);
    }
    if (data.containsKey('mes_pagamento')) {
      context.handle(
          _mesPagamentoMeta,
          mesPagamento.isAcceptableOrUnknown(
              data['mes_pagamento']!, _mesPagamentoMeta));
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
      dataInicio: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}data_inicio'])!,
      dataFim: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}data_fim'])!,
      diaPagamento: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}dia_pagamento'])!,
      mesPagamento: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}mes_pagamento']),
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
  final DateTime dataInicio;
  final DateTime dataFim;
  final int diaPagamento;
  final int? mesPagamento;
  const ContratoTableData(
      {required this.id,
      required this.tipoIntervalo,
      required this.dataInicio,
      required this.dataFim,
      required this.diaPagamento,
      this.mesPagamento});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      map['tipo_intervalo'] = Variable<String>(
          $ContratoTableTable.$convertertipoIntervalo.toSql(tipoIntervalo));
    }
    map['data_inicio'] = Variable<DateTime>(dataInicio);
    map['data_fim'] = Variable<DateTime>(dataFim);
    map['dia_pagamento'] = Variable<int>(diaPagamento);
    if (!nullToAbsent || mesPagamento != null) {
      map['mes_pagamento'] = Variable<int>(mesPagamento);
    }
    return map;
  }

  ContratoTableCompanion toCompanion(bool nullToAbsent) {
    return ContratoTableCompanion(
      id: Value(id),
      tipoIntervalo: Value(tipoIntervalo),
      dataInicio: Value(dataInicio),
      dataFim: Value(dataFim),
      diaPagamento: Value(diaPagamento),
      mesPagamento: mesPagamento == null && nullToAbsent
          ? const Value.absent()
          : Value(mesPagamento),
    );
  }

  factory ContratoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContratoTableData(
      id: serializer.fromJson<int>(json['id']),
      tipoIntervalo: $ContratoTableTable.$convertertipoIntervalo
          .fromJson(serializer.fromJson<String>(json['tipoIntervalo'])),
      dataInicio: serializer.fromJson<DateTime>(json['dataInicio']),
      dataFim: serializer.fromJson<DateTime>(json['dataFim']),
      diaPagamento: serializer.fromJson<int>(json['diaPagamento']),
      mesPagamento: serializer.fromJson<int?>(json['mesPagamento']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tipoIntervalo': serializer.toJson<String>(
          $ContratoTableTable.$convertertipoIntervalo.toJson(tipoIntervalo)),
      'dataInicio': serializer.toJson<DateTime>(dataInicio),
      'dataFim': serializer.toJson<DateTime>(dataFim),
      'diaPagamento': serializer.toJson<int>(diaPagamento),
      'mesPagamento': serializer.toJson<int?>(mesPagamento),
    };
  }

  ContratoTableData copyWith(
          {int? id,
          TipoIntervalo? tipoIntervalo,
          DateTime? dataInicio,
          DateTime? dataFim,
          int? diaPagamento,
          Value<int?> mesPagamento = const Value.absent()}) =>
      ContratoTableData(
        id: id ?? this.id,
        tipoIntervalo: tipoIntervalo ?? this.tipoIntervalo,
        dataInicio: dataInicio ?? this.dataInicio,
        dataFim: dataFim ?? this.dataFim,
        diaPagamento: diaPagamento ?? this.diaPagamento,
        mesPagamento:
            mesPagamento.present ? mesPagamento.value : this.mesPagamento,
      );
  ContratoTableData copyWithCompanion(ContratoTableCompanion data) {
    return ContratoTableData(
      id: data.id.present ? data.id.value : this.id,
      tipoIntervalo: data.tipoIntervalo.present
          ? data.tipoIntervalo.value
          : this.tipoIntervalo,
      dataInicio:
          data.dataInicio.present ? data.dataInicio.value : this.dataInicio,
      dataFim: data.dataFim.present ? data.dataFim.value : this.dataFim,
      diaPagamento: data.diaPagamento.present
          ? data.diaPagamento.value
          : this.diaPagamento,
      mesPagamento: data.mesPagamento.present
          ? data.mesPagamento.value
          : this.mesPagamento,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ContratoTableData(')
          ..write('id: $id, ')
          ..write('tipoIntervalo: $tipoIntervalo, ')
          ..write('dataInicio: $dataInicio, ')
          ..write('dataFim: $dataFim, ')
          ..write('diaPagamento: $diaPagamento, ')
          ..write('mesPagamento: $mesPagamento')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, tipoIntervalo, dataInicio, dataFim, diaPagamento, mesPagamento);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContratoTableData &&
          other.id == this.id &&
          other.tipoIntervalo == this.tipoIntervalo &&
          other.dataInicio == this.dataInicio &&
          other.dataFim == this.dataFim &&
          other.diaPagamento == this.diaPagamento &&
          other.mesPagamento == this.mesPagamento);
}

class ContratoTableCompanion extends UpdateCompanion<ContratoTableData> {
  final Value<int> id;
  final Value<TipoIntervalo> tipoIntervalo;
  final Value<DateTime> dataInicio;
  final Value<DateTime> dataFim;
  final Value<int> diaPagamento;
  final Value<int?> mesPagamento;
  const ContratoTableCompanion({
    this.id = const Value.absent(),
    this.tipoIntervalo = const Value.absent(),
    this.dataInicio = const Value.absent(),
    this.dataFim = const Value.absent(),
    this.diaPagamento = const Value.absent(),
    this.mesPagamento = const Value.absent(),
  });
  ContratoTableCompanion.insert({
    this.id = const Value.absent(),
    required TipoIntervalo tipoIntervalo,
    required DateTime dataInicio,
    required DateTime dataFim,
    required int diaPagamento,
    this.mesPagamento = const Value.absent(),
  })  : tipoIntervalo = Value(tipoIntervalo),
        dataInicio = Value(dataInicio),
        dataFim = Value(dataFim),
        diaPagamento = Value(diaPagamento);
  static Insertable<ContratoTableData> custom({
    Expression<int>? id,
    Expression<String>? tipoIntervalo,
    Expression<DateTime>? dataInicio,
    Expression<DateTime>? dataFim,
    Expression<int>? diaPagamento,
    Expression<int>? mesPagamento,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tipoIntervalo != null) 'tipo_intervalo': tipoIntervalo,
      if (dataInicio != null) 'data_inicio': dataInicio,
      if (dataFim != null) 'data_fim': dataFim,
      if (diaPagamento != null) 'dia_pagamento': diaPagamento,
      if (mesPagamento != null) 'mes_pagamento': mesPagamento,
    });
  }

  ContratoTableCompanion copyWith(
      {Value<int>? id,
      Value<TipoIntervalo>? tipoIntervalo,
      Value<DateTime>? dataInicio,
      Value<DateTime>? dataFim,
      Value<int>? diaPagamento,
      Value<int?>? mesPagamento}) {
    return ContratoTableCompanion(
      id: id ?? this.id,
      tipoIntervalo: tipoIntervalo ?? this.tipoIntervalo,
      dataInicio: dataInicio ?? this.dataInicio,
      dataFim: dataFim ?? this.dataFim,
      diaPagamento: diaPagamento ?? this.diaPagamento,
      mesPagamento: mesPagamento ?? this.mesPagamento,
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
    if (dataInicio.present) {
      map['data_inicio'] = Variable<DateTime>(dataInicio.value);
    }
    if (dataFim.present) {
      map['data_fim'] = Variable<DateTime>(dataFim.value);
    }
    if (diaPagamento.present) {
      map['dia_pagamento'] = Variable<int>(diaPagamento.value);
    }
    if (mesPagamento.present) {
      map['mes_pagamento'] = Variable<int>(mesPagamento.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContratoTableCompanion(')
          ..write('id: $id, ')
          ..write('tipoIntervalo: $tipoIntervalo, ')
          ..write('dataInicio: $dataInicio, ')
          ..write('dataFim: $dataFim, ')
          ..write('diaPagamento: $diaPagamento, ')
          ..write('mesPagamento: $mesPagamento')
          ..write(')'))
        .toString();
  }
}

abstract class _$BancoDados extends GeneratedDatabase {
  _$BancoDados(QueryExecutor e) : super(e);
  $BancoDadosManager get managers => $BancoDadosManager(this);
  late final $EnderecoTableTable enderecoTable = $EnderecoTableTable(this);
  late final $ClienteTableTable clienteTable = $ClienteTableTable(this);
  late final $ComodoTableTable comodoTable = $ComodoTableTable(this);
  late final $PagamentoTableTable pagamentoTable = $PagamentoTableTable(this);
  late final $ImovelTableTable imovelTable = $ImovelTableTable(this);
  late final $ContratoTableTable contratoTable = $ContratoTableTable(this);
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
        comodoTable,
        pagamentoTable,
        imovelTable,
        contratoTable
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
  required String rua,
  required DateTime dataNascimento,
  required Contato contato,
});
typedef $$ClienteTableTableUpdateCompanionBuilder = ClienteTableCompanion
    Function({
  Value<int> id,
  Value<String> nome,
  Value<String> cPF,
  Value<String> rua,
  Value<DateTime> dataNascimento,
  Value<Contato> contato,
});

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

  ColumnFilters<String> get rua => $composableBuilder(
      column: $table.rua, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dataNascimento => $composableBuilder(
      column: $table.dataNascimento,
      builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Contato, Contato, String> get contato =>
      $composableBuilder(
          column: $table.contato,
          builder: (column) => ColumnWithTypeConverterFilters(column));
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

  ColumnOrderings<String> get rua => $composableBuilder(
      column: $table.rua, builder: (column) => ColumnOrderings(column));

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

  GeneratedColumn<String> get rua =>
      $composableBuilder(column: $table.rua, builder: (column) => column);

  GeneratedColumn<DateTime> get dataNascimento => $composableBuilder(
      column: $table.dataNascimento, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Contato, String> get contato =>
      $composableBuilder(column: $table.contato, builder: (column) => column);
}

class $$ClienteTableTableTableManager extends RootTableManager<
    _$BancoDados,
    $ClienteTableTable,
    Cliente,
    $$ClienteTableTableFilterComposer,
    $$ClienteTableTableOrderingComposer,
    $$ClienteTableTableAnnotationComposer,
    $$ClienteTableTableCreateCompanionBuilder,
    $$ClienteTableTableUpdateCompanionBuilder,
    (Cliente, BaseReferences<_$BancoDados, $ClienteTableTable, Cliente>),
    Cliente,
    PrefetchHooks Function()> {
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
            Value<String> rua = const Value.absent(),
            Value<DateTime> dataNascimento = const Value.absent(),
            Value<Contato> contato = const Value.absent(),
          }) =>
              ClienteTableCompanion(
            id: id,
            nome: nome,
            cPF: cPF,
            rua: rua,
            dataNascimento: dataNascimento,
            contato: contato,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String nome,
            required String cPF,
            required String rua,
            required DateTime dataNascimento,
            required Contato contato,
          }) =>
              ClienteTableCompanion.insert(
            id: id,
            nome: nome,
            cPF: cPF,
            rua: rua,
            dataNascimento: dataNascimento,
            contato: contato,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ClienteTableTableProcessedTableManager = ProcessedTableManager<
    _$BancoDados,
    $ClienteTableTable,
    Cliente,
    $$ClienteTableTableFilterComposer,
    $$ClienteTableTableOrderingComposer,
    $$ClienteTableTableAnnotationComposer,
    $$ClienteTableTableCreateCompanionBuilder,
    $$ClienteTableTableUpdateCompanionBuilder,
    (Cliente, BaseReferences<_$BancoDados, $ClienteTableTable, Cliente>),
    Cliente,
    PrefetchHooks Function()>;
typedef $$ComodoTableTableCreateCompanionBuilder = ComodoTableCompanion
    Function({
  Value<int> id,
  required TipoComodo tipoComodo,
  required int quantidade,
});
typedef $$ComodoTableTableUpdateCompanionBuilder = ComodoTableCompanion
    Function({
  Value<int> id,
  Value<TipoComodo> tipoComodo,
  Value<int> quantidade,
});

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
}

class $$ComodoTableTableTableManager extends RootTableManager<
    _$BancoDados,
    $ComodoTableTable,
    Comodo,
    $$ComodoTableTableFilterComposer,
    $$ComodoTableTableOrderingComposer,
    $$ComodoTableTableAnnotationComposer,
    $$ComodoTableTableCreateCompanionBuilder,
    $$ComodoTableTableUpdateCompanionBuilder,
    (Comodo, BaseReferences<_$BancoDados, $ComodoTableTable, Comodo>),
    Comodo,
    PrefetchHooks Function()> {
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
          }) =>
              ComodoTableCompanion(
            id: id,
            tipoComodo: tipoComodo,
            quantidade: quantidade,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required TipoComodo tipoComodo,
            required int quantidade,
          }) =>
              ComodoTableCompanion.insert(
            id: id,
            tipoComodo: tipoComodo,
            quantidade: quantidade,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ComodoTableTableProcessedTableManager = ProcessedTableManager<
    _$BancoDados,
    $ComodoTableTable,
    Comodo,
    $$ComodoTableTableFilterComposer,
    $$ComodoTableTableOrderingComposer,
    $$ComodoTableTableAnnotationComposer,
    $$ComodoTableTableCreateCompanionBuilder,
    $$ComodoTableTableUpdateCompanionBuilder,
    (Comodo, BaseReferences<_$BancoDados, $ComodoTableTable, Comodo>),
    Comodo,
    PrefetchHooks Function()>;
typedef $$PagamentoTableTableCreateCompanionBuilder = PagamentoTableCompanion
    Function({
  Value<int> id,
  required TipoPagamento tipoPagamento,
  required double valor,
});
typedef $$PagamentoTableTableUpdateCompanionBuilder = PagamentoTableCompanion
    Function({
  Value<int> id,
  Value<TipoPagamento> tipoPagamento,
  Value<double> valor,
});

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
}

class $$PagamentoTableTableTableManager extends RootTableManager<
    _$BancoDados,
    $PagamentoTableTable,
    Pagamento,
    $$PagamentoTableTableFilterComposer,
    $$PagamentoTableTableOrderingComposer,
    $$PagamentoTableTableAnnotationComposer,
    $$PagamentoTableTableCreateCompanionBuilder,
    $$PagamentoTableTableUpdateCompanionBuilder,
    (Pagamento, BaseReferences<_$BancoDados, $PagamentoTableTable, Pagamento>),
    Pagamento,
    PrefetchHooks Function()> {
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
          }) =>
              PagamentoTableCompanion(
            id: id,
            tipoPagamento: tipoPagamento,
            valor: valor,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required TipoPagamento tipoPagamento,
            required double valor,
          }) =>
              PagamentoTableCompanion.insert(
            id: id,
            tipoPagamento: tipoPagamento,
            valor: valor,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PagamentoTableTableProcessedTableManager = ProcessedTableManager<
    _$BancoDados,
    $PagamentoTableTable,
    Pagamento,
    $$PagamentoTableTableFilterComposer,
    $$PagamentoTableTableOrderingComposer,
    $$PagamentoTableTableAnnotationComposer,
    $$PagamentoTableTableCreateCompanionBuilder,
    $$PagamentoTableTableUpdateCompanionBuilder,
    (Pagamento, BaseReferences<_$BancoDados, $PagamentoTableTable, Pagamento>),
    Pagamento,
    PrefetchHooks Function()>;
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
        .filter((f) => f.id($_item.enderecoId!));
    final item = $_typedResult.readTableOrNull(_enderecoIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
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
    PrefetchHooks Function({bool enderecoId})> {
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
          prefetchHooksCallback: ({enderecoId = false}) {
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
                return [];
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
    PrefetchHooks Function({bool enderecoId})>;
typedef $$ContratoTableTableCreateCompanionBuilder = ContratoTableCompanion
    Function({
  Value<int> id,
  required TipoIntervalo tipoIntervalo,
  required DateTime dataInicio,
  required DateTime dataFim,
  required int diaPagamento,
  Value<int?> mesPagamento,
});
typedef $$ContratoTableTableUpdateCompanionBuilder = ContratoTableCompanion
    Function({
  Value<int> id,
  Value<TipoIntervalo> tipoIntervalo,
  Value<DateTime> dataInicio,
  Value<DateTime> dataFim,
  Value<int> diaPagamento,
  Value<int?> mesPagamento,
});

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

  ColumnFilters<DateTime> get dataInicio => $composableBuilder(
      column: $table.dataInicio, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dataFim => $composableBuilder(
      column: $table.dataFim, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get diaPagamento => $composableBuilder(
      column: $table.diaPagamento, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get mesPagamento => $composableBuilder(
      column: $table.mesPagamento, builder: (column) => ColumnFilters(column));
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

  ColumnOrderings<DateTime> get dataInicio => $composableBuilder(
      column: $table.dataInicio, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dataFim => $composableBuilder(
      column: $table.dataFim, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get diaPagamento => $composableBuilder(
      column: $table.diaPagamento,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get mesPagamento => $composableBuilder(
      column: $table.mesPagamento,
      builder: (column) => ColumnOrderings(column));
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

  GeneratedColumn<DateTime> get dataInicio => $composableBuilder(
      column: $table.dataInicio, builder: (column) => column);

  GeneratedColumn<DateTime> get dataFim =>
      $composableBuilder(column: $table.dataFim, builder: (column) => column);

  GeneratedColumn<int> get diaPagamento => $composableBuilder(
      column: $table.diaPagamento, builder: (column) => column);

  GeneratedColumn<int> get mesPagamento => $composableBuilder(
      column: $table.mesPagamento, builder: (column) => column);
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
    (
      ContratoTableData,
      BaseReferences<_$BancoDados, $ContratoTableTable, ContratoTableData>
    ),
    ContratoTableData,
    PrefetchHooks Function()> {
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
            Value<DateTime> dataInicio = const Value.absent(),
            Value<DateTime> dataFim = const Value.absent(),
            Value<int> diaPagamento = const Value.absent(),
            Value<int?> mesPagamento = const Value.absent(),
          }) =>
              ContratoTableCompanion(
            id: id,
            tipoIntervalo: tipoIntervalo,
            dataInicio: dataInicio,
            dataFim: dataFim,
            diaPagamento: diaPagamento,
            mesPagamento: mesPagamento,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required TipoIntervalo tipoIntervalo,
            required DateTime dataInicio,
            required DateTime dataFim,
            required int diaPagamento,
            Value<int?> mesPagamento = const Value.absent(),
          }) =>
              ContratoTableCompanion.insert(
            id: id,
            tipoIntervalo: tipoIntervalo,
            dataInicio: dataInicio,
            dataFim: dataFim,
            diaPagamento: diaPagamento,
            mesPagamento: mesPagamento,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
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
    (
      ContratoTableData,
      BaseReferences<_$BancoDados, $ContratoTableTable, ContratoTableData>
    ),
    ContratoTableData,
    PrefetchHooks Function()>;

class $BancoDadosManager {
  final _$BancoDados _db;
  $BancoDadosManager(this._db);
  $$EnderecoTableTableTableManager get enderecoTable =>
      $$EnderecoTableTableTableManager(_db, _db.enderecoTable);
  $$ClienteTableTableTableManager get clienteTable =>
      $$ClienteTableTableTableManager(_db, _db.clienteTable);
  $$ComodoTableTableTableManager get comodoTable =>
      $$ComodoTableTableTableManager(_db, _db.comodoTable);
  $$PagamentoTableTableTableManager get pagamentoTable =>
      $$PagamentoTableTableTableManager(_db, _db.pagamentoTable);
  $$ImovelTableTableTableManager get imovelTable =>
      $$ImovelTableTableTableManager(_db, _db.imovelTable);
  $$ContratoTableTableTableManager get contratoTable =>
      $$ContratoTableTableTableManager(_db, _db.contratoTable);
}
