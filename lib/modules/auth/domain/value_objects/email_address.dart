import '../../../../core/utils/error/errors.dart';
import '../../../../core/utils/values/guard.dart';
import '../../../../core/utils/values/result.dart';
import '../../../../core/utils/values/value_object.dart';

class UserEmailAddress extends ValueObject<UserEmailAddress> {
  const UserEmailAddress._(
    this.input,
  ) : super(input);

  static Result<UserEmailAddress> create({
    String email = '',
  }) {
    final Guard<String> guard = Guard<String>();
    final Result<String> nullOrUndefineCheck = guard.againstNullOrUndefined(
      value: email,
      valueName: 'Email Address',
    );
    if (nullOrUndefineCheck.isLeft) {
      return Result<UserEmailAddress>.fail(
        error: KwaluSelliValueError('Please enter a value'),
      );
    }

    final Result<String> emailCheckResult = guard.isEmailAddress(
      value: email,
    );
    if (emailCheckResult.isRight) {
      return Result<UserEmailAddress>.ok(
        value: UserEmailAddress._(email),
      );
    } else {
      return Result<UserEmailAddress>.fail(
        error: KwaluSelliValueError('Please enter a valid phone number'),
      );
    }
  }

  final String input;
}
