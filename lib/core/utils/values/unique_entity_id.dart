import 'package:uuid/uuid.dart';

import 'identifier.dart';

class UniqueEntityId extends Identifier<String> {
  UniqueEntityId(this.id)
      : super(
          id == '' ? _createId() : id ?? _createId(),
        );

  static String _createId() => const Uuid().v4();
  final String? id;
}
