import 'package:drift/drift.dart';
import 'package:trabalho3/data/my_data_class.dart';

class GenericConverter<T extends MyDataClass> extends TypeConverter<T, String>
    with JsonTypeConverter<T, String> {
  const GenericConverter(this.fromSqlFunction, [this.toSqlFunction]);

  final T Function(String) fromSqlFunction;
  final String Function(T)? toSqlFunction;

  @override
  T fromSql(String fromDb) => fromSqlFunction(fromDb);

  @override
  String toSql(T value) {
    if (toSqlFunction == null) {
      return value.toJson();
    } else {
      return toSqlFunction!(value);
    }
  }
}
