import '../../../../core/utils/error/errors.dart';
import '../../../../core/utils/values/guard.dart';
import '../../../../core/utils/values/result.dart';
import '../../../../core/utils/values/value_object.dart';

class UserEmailAddress extends ValueObject<UserEmailAddress> {
  const UserEmailAddress._(
    this.input,
  ) : super(input);

  static Result<UserEmailAddress> create({
    String input = '',
  }) {
    final Guard<String> guard = Guard<String>();
    final Result<String> nullOrUndefineCheck = guard.againstNullOrUndefined(
      value: input,
      valueName: 'Email Address',
    );
    if (nullOrUndefineCheck.isLeft) {
      return Result<UserEmailAddress>.fail(
        error: KwaluSelliValueError('Please enter a value'),
      );
    }

    final Result<String> emailCheckResult = guard.isEmailAddress(
      value: input,
    );
    if (emailCheckResult.isRight) {
      return Result<UserEmailAddress>.ok(
        value: UserEmailAddress._(input),
      );
    } else {
      return Result<UserEmailAddress>.fail(
        error: KwaluSelliValueError('Please enter a valid phone number'),
      );
    }
  }

  final String input;
}
