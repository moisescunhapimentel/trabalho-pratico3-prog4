import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:trabalho3/data/my_data_class.dart';

class GenericListConverter<T extends List<MyDataClass>>
    extends TypeConverter<T, String> with JsonTypeConverter<T, String> {
  const GenericListConverter(this.fromSqlFunction, [this.toSqlFunction]);

  final T Function(String) fromSqlFunction;
  final String Function(T)? toSqlFunction;

  @override
  T fromSql(String fromDb) => fromSqlFunction(fromDb);

  @override
  String toSql(T value) {
    if (toSqlFunction == null) {
      return jsonEncode(value
          .map(
            (e) => e.toJson(),
          )
          .toList());
    } else {
      return toSqlFunction!(value);
    }
  }
}
