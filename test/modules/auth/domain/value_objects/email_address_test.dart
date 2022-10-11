import 'package:flutter_test/flutter_test.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/email_address.dart';

void main() {
  test('given a valid email, return success result', () {
    final Result<UserEmailAddress> result = UserEmailAddress.create(
      input: 'test@test.com',
    );

    expect(result.isRight, true);
  });

  test('given an invalid email, return a failed result', () {
    final Result<UserEmailAddress> result = UserEmailAddress.create(
      input: 'test',
    );

    final Result<UserEmailAddress> result2 = UserEmailAddress.create(
      input: 'test@test.',
    );

    final Result<UserEmailAddress> result3 = UserEmailAddress.create(
      input: '0801',
    );

    expect(result.isLeft, true);
    expect(result2.isLeft, true);
    expect(result3.isLeft, true);
  });
}
