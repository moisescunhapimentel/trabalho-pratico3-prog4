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

abstract class _$BancoDados extends GeneratedDatabase {
  _$BancoDados(QueryExecutor e) : super(e);
  $BancoDadosManager get managers => $BancoDadosManager(this);
  late final $EnderecoTableTable enderecoTable = $EnderecoTableTable(this);
  late final $ClienteTableTable clienteTable = $ClienteTableTable(this);
  late final $ComodoTableTable comodoTable = $ComodoTableTable(this);
  late final $PagamentoTableTable pagamentoTable = $PagamentoTableTable(this);
  late final EnderecoDao enderecoDao = EnderecoDao(this as BancoDados);
  late final ClienteDao clienteDao = ClienteDao(this as BancoDados);
  late final ComodoDao comodoDao = ComodoDao(this as BancoDados);
  late final PagamentoDao pagamentoDao = PagamentoDao(this as BancoDados);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [enderecoTable, clienteTable, comodoTable, pagamentoTable];
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
}
