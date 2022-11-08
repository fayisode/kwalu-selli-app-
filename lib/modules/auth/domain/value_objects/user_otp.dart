import 'package:kwalu_selli/core/utils/error/error.dart';
import 'package:kwalu_selli/core/utils/values/guard.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/core/utils/values/value_object.dart';

class UserOtp extends ValueObject<String> {
  const UserOtp._(this.input) : super(input);

  static Result<UserOtp> create(String input) {
    final Guard<String> guard = Guard<String>();

    final Result<String> nullOrUndefineCheck = guard.againstNullOrUndefined(
      value: input,
      valueName: 'OTP',
    );

    if (nullOrUndefineCheck.isLeft) {
      return Result<UserOtp>.fail(
        error: KwaluSelliValueError('Please enter a value'),
      );
    }

    final Result<String> otpCheckResult =
        guard.inRange(value: input.length, min: 4, max: 4, valueName: 'OTP');

    if (otpCheckResult.isLeft) {
      return Result<UserOtp>.fail(
        error: KwaluSelliValueError('Please enter a valid OTP'),
      );
    }

    return Result<UserOtp>.ok(value: UserOtp._(input));
  }

  final String input;
}
