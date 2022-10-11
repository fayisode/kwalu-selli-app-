import 'package:freezed_annotation/freezed_annotation.dart';

@Immutable()
class Identifier<T> {
  Identifier(this.value);

  bool equals(Identifier<T> id) {
    if (id.value == null) {
      return false;
    }

    return id.toValue() == value;
  }

  T toValue() => value;

  @override
  String toString() => value.toString();

  final T value;
}
