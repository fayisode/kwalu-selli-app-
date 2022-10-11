import 'package:kwalu_selli/core/utils/values/result.dart';

import '../error/errors.dart';

class Guard<T> {
  Result<T> combine({
    required List<Result<T>> results,
  }) {
    for (final Result<T> result in results) {
      if (result.isLeft) {
        return result;
      }
    }
    return Result<T>.ok(value: results.first.getValue);
  }

  Result<String> greaterThanOrEquals({
    required int value,
    required int than,
  }) =>
      value >= than
          ? Result<String>.ok(value: '')
          : Result<String>.fail(
              error: KwaluSelliValueError(
                'The value $value is not greater than $than',
              ),
            );

  Result<String> againstAtLeast({
    required String value,
    required int numChar,
  }) =>
      value.length >= numChar
          ? Result<String>.ok(value: value)
          : Result<String>.fail(
              error: KwaluSelliValueError(
                '$numChar doesnot match the required character ',
              ),
            );

  Result<String> againstAtMost({
    required String value,
    required int numChar,
  }) =>
      value.length <= numChar
          ? Result<String>.ok(value: value)
          : Result<String>.fail(
              error: KwaluSelliValueError(
                '$numChar doesnot match the required character ',
              ),
            );

  Result<String> againstNullOrUndefined({
    required String value,
    required String valueName,
  }) {
    if (value == '') {
      return Result<String>.fail(
        error: KwaluSelliValueError(
          'Please enter a value for $valueName',
        ),
      );
    }
    return Result<String>.ok(value: value);
  }

  Result<String> againstNullOrUndefinedBulk(
    Map<String, String> map,
  ) {
    Result<String>? resultsTag;
    map.forEach((String key, String value) {
      final Result<String> result = againstNullOrUndefined(
        value: value,
        valueName: key,
      );
      if (result.isLeft) {
        resultsTag = result;
      }
    });
    if (resultsTag != null) {
      return resultsTag!;
    }
    return Result<String>.ok(value: '');
  }

  Result<String> isOneOf({
    required Result<String> value,
    required List<Result<String>> validValues,
    required String argumentName,
  }) {
    bool isValid = false;
    for (final Result<String> validValue in validValues) {
      if (value.getValue == validValue.getValue) {
        isValid = true;
      }
    }

    if (isValid) {
      return Result<String>.ok(value: '');
    }

    return Result<String>.fail(
      error: KwaluSelliValueError(
        "$argumentName isn't one of the correct types",
      ),
    );
  }

  Result<String> containsNumericalValue({
    required String value,
    required String valueName,
  }) {
    final RegExp regExp = RegExp('[0-9]');
    if (regExp.hasMatch(value)) {
      return Result<String>.ok(value: '');
    }
    return Result<String>.fail(
      error: KwaluSelliValueError(
        '$valueName does not contain a numerical value',
      ),
    );
  }

  Result<String> containsSpecialCharacter({
    required String value,
    required String valueName,
  }) {
    final RegExp regExp = RegExp(
      r'[!@#$%^&*(),.?":{}|<>]',
    );
    if (value.contains(regExp)) {
      return Result<String>.ok(value: '');
    }
    return Result<String>.fail(
      error: KwaluSelliValueError(
        '$valueName does not contain a special character',
      ),
    );
  }

  Result<String> inRange({
    required int value,
    required int min,
    required int max,
    required String valueName,
  }) {
    final bool isInRange = value >= min && value <= max;
    if (!isInRange) {
      return Result<String>.fail(
        error: KwaluSelliValueError('$valueName is not within range'),
      );
    } else {
      return Result<String>.ok(value: '');
    }
  }

  Result<String> allInRange({
    required List<int> values,
    required int min,
    required int max,
    required String valueName,
  }) {
    Result<String>? failingResult;

    for (final int value in values) {
      final Result<String> numIsInRange =
          inRange(value: value, min: min, max: max, valueName: valueName);
      if (numIsInRange.isLeft) {
        failingResult = numIsInRange;
      }
    }
    if (failingResult == null) {
      return Result<String>.ok(value: '');
    }
    return Result<String>.fail(
      error: KwaluSelliValueError('$valueName is not within range'),
    );
  }

  Result<String> containsUpperCase({
    required String value,
    required String valueName,
  }) {
    final RegExp regExp = RegExp('[A-Z]');
    if (value.contains(regExp)) {
      return Result<String>.ok(value: '');
    }
    return Result<String>.fail(
      error: KwaluSelliValueError(
        '$valueName does not contain an uppercase character',
      ),
    );
  }

  Result<String> containsLowerCase({
    required String value,
    required String valueName,
  }) {
    final RegExp regExp = RegExp('[a-z]');
    if (value.contains(regExp)) {
      return Result<String>.ok(value: '');
    }
    return Result<String>.fail(
      error: KwaluSelliValueError(
        '$valueName does not contain a lowercase character',
      ),
    );
  }

  Result<String> isNumberWithinRange({
    required String value,
    required int min,
    required int max,
  }) {
    final RegExp phoneRegExp = RegExp(r'^[0-9]+$');

    const String valueName = 'Phone number';
    final Result<String> nullOrUndefinedCheck = againstNullOrUndefined(
      value: value,
      valueName: valueName,
    );

    if (nullOrUndefinedCheck.isLeft) {
      return nullOrUndefinedCheck;
    }

    final Result<String> inRange = this.inRange(
      value: value.length,
      min: min,
      max: max,
      valueName: valueName,
    );

    if (inRange.isLeft) {
      return inRange;
    }

    if (phoneRegExp.hasMatch(value)) {
      return Result<String>.ok(value: '');
    } else {
      return Result<String>.fail(
        error: KwaluSelliValueError(
          '$value is not a valid phone number',
        ),
      );
    }
  }

  Result<String> isEmailAddress({required String value}) {
    const String valueName = 'Email address';
    final Result<String> nullOrUndefinedCheck = againstNullOrUndefined(
      value: value,
      valueName: valueName,
    );

    if (nullOrUndefinedCheck.isLeft) {
      return nullOrUndefinedCheck;
    }

    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
    );

    if (emailRegExp.hasMatch(value)) {
      return Result<String>.ok(value: '');
    } else {
      return Result<String>.fail(
        error: KwaluSelliValueError(
          '$value is not a valid email address',
        ),
      );
    }
  }
}
