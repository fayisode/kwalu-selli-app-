import 'package:flutter_test/flutter_test.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/user_password.dart';

void main() {
  test('given a valid user password, return a success result', () {
    final Result<UserPassword> result =
        UserPassword.create(password: 'testpassword');
    expect(result.isRight, true);
  });

  test('given an invalid password, return a failed result', () {
    final Result<UserPassword> result = UserPassword.create(password: 'te');
    expect(result.isLeft, true);
    final Result<UserPassword> result2 = UserPassword.create(
      password:
          'teestaoajdjfjfjfajkhjhkfjhkfjhkfjhkfjkfjkfjfjkhfjkhfjfkhjhkfjhkfjfjhfjhfjhfjhfjhkfjkhfjhfjfjfjkhf',
    );
    expect(result2.isLeft, true);
  });
}
