import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/core/utils/values/values.dart';

import '../../../../core/utils/error/errors.dart';
import '../../../../core/utils/values/guard.dart';

class UserPhoneNumber extends ValueObject<UserPhoneNumber> {
  const UserPhoneNumber._(this.input) : super(input);
  static int minLength = 8;
  static int maxLength = 8;
  final String input;

  static Result<UserPhoneNumber> create({required String phoneNumber}) {
    Result<String> result = Guard<String>().combine(results: [
      Guard<String>().againstNullOrUndefined(
          value: phoneNumber, valueName: 'Phone Number'),
      Guard<String>().isNumberWithinRange(
          value: phoneNumber, min: minLength, max: maxLength),
    ]);

    if (result.isLeft) {
      return Result<UserPhoneNumber>.fail(
        error: KwaluSelliValueError('Please enter a valid phone number'),
      );
    }

    return Result.ok(value: UserPhoneNumber._(phoneNumber));
  }
}
