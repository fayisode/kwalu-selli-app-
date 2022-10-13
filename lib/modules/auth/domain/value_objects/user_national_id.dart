import 'package:kwalu_selli/core/utils/error/errors.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';

import '../../../../core/utils/values/guard.dart';
import '../../../../core/utils/values/value_object.dart';

class UserNationalId extends ValueObject<UserNationalId> {
  const UserNationalId._(this.input) : super(input);

  final String input;

  static Result<UserNationalId> create({required String id}) {
    Result<String> result = Guard<String>().combine(results: [
      Guard<String>()
          .againstNullOrUndefined(value: id, valueName: 'National ID'),
    ]);

    if (result.isLeft) {
      return Result.fail(error: result.errorValue);
    }

    Result<String> typeCheckResult = Guard<String>().isNumberWithinRange(
      value: id,
      min: 13,
      max: 13,
    );
    if (typeCheckResult.isRight) {
      return Result.ok(value: UserNationalId._(id));
    } else {
      return Result.fail(
        error: KwaluSelliValueError('Please enter a valid national id'),
      );
    }
  }
}
