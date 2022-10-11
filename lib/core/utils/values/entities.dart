import 'package:freezed_annotation/freezed_annotation.dart';

import 'unique_entity_id.dart';

@Immutable()
class Entities<T> {
  Entities(this.value, this._id);

  bool equals(Entities<T> entities) {
    if (entities.value == null) {
      return false;
    }
    if (entities._id == null) {
      return false;
    }

    return _id!.equals(entities._id!);
  }

  @override
  String toString() => value.toString();

  final T value;
  final UniqueEntityId? _id;
}
