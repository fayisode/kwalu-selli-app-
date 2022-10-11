import 'package:kwalu_selli/core/utils/values/guard.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/core/utils/values/value_object.dart';

import '../../../../core/utils/values/value_object.dart';

class UserPassword extends ValueObject<UserPassword> {
  const UserPassword(this.input) : super(input);

  static Result<UserPassword> create({required String password}) {
    final Result<String> result = Guard<String>().combine(
      results: <Result<String>>[
        Guard<String>().againstNullOrUndefined(
          value: password,
          valueName: 'Password',
        ),
        Guard<String>().inRange(
          value: password.length,
          min: 6,
          max: 30,
          valueName: 'Password',
        ),
      ],
    );
    if (result.isLeft) {
      return Result<UserPassword>.fail(error: result.error);
    }

    return Result.ok(value: UserPassword(password));
  }

  final String input;
}
