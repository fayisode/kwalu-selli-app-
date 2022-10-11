// ignore_for_file: avoid_catches_without_on_clauses

import 'package:freezed_annotation/freezed_annotation.dart';

import '../error/errors.dart';

@immutable
class Result<T> {
  Result._({
    required this.isRight,
    T? value,
    this.error,
  }) {
    if (isRight && error != null) {
      throw KwaluSelliValueError(
        'Invalid Operation: A result cannot be successful and have an error',
      );
    }
    if (!isRight && error == null) {
      throw KwaluSelliValueError(
        '''Invalid Operation: A result cannot be unsuccessful and have no error message''',
      );
    }
    isLeft = !isRight;
    if (value != null) {
      _value = value;
    }
  }

  factory Result.fail({required Error? error}) => Result<T>._(
        isRight: false,
        error: error,
      );

  factory Result.ok({required T value}) => Result<T>._(
        isRight: true,
        value: value,
      );

  factory Result.combile({required List<Result<T>> results}) {
    for (final Result<T> result in results) {
      if (result.isLeft) {
        return result;
      }
    }
    return Result<T>.ok(value: results.first.getValue);
  }

  T get getValue {
    if (!isRight) {
      throw KwaluSelliValueError(
        'Cant get the value of an error result, use [errorValue] instead',
      );
    }
    return _value;
  }

  String get errorMessage {
    if (error == null) {
      return '';
    }
    return error.toString().replaceAll(RegExp('"'), '');
  }

  Error? get errorValue => error;

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object o) {
    if (identical(this, o)) {
      return true;
    }

    try {
      return o is Result<T> && o.getValue == getValue;
    } catch (e) {
      return o is Result<T> && o.errorMessage == errorMessage;
    }
  }

  @override
  int get hashCode {
    try {
      return getValue.hashCode;
    } catch (e) {
      return errorMessage.hashCode;
    }
  }

  @override
  String toString() {
    try {
      return 'Value($getValue)';
    } catch (e) {
      return 'Value($errorMessage)';
    }
  }

  final bool isRight;
  late bool isLeft;
  final Error? error;
  late T _value;
}
