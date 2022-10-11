import 'package:flutter_test/flutter_test.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/user_national_id.dart';

void main() {
  test('given an id that contains string, return a failed result', () {
    final Result<UserNationalId> result =
        UserNationalId.create(id: '1234567890a');
    expect(result.isLeft, true);
  });

  test('given a value that contains alphabet, return a failed result', () {
    final Result<UserNationalId> result =
        UserNationalId.create(id: 'a1234567890');
    expect(result.isLeft, true);
    final Result<UserNationalId> result2 =
        UserNationalId.create(id: 'a123456789023');
    expect(result2.isLeft, true);
  });

  test('given a value with special character, return a failed result', () {
    final Result<UserNationalId> result =
        UserNationalId.create(id: '123456789012@');
    expect(result.isLeft, true);
  });

  test('given a valid id, return a success result', () {
    final Result<UserNationalId> result =
        UserNationalId.create(id: '1234567890123');
    expect(result.isRight, true);
  });

  test('given an id above 13, return a failed result', () {
    final Result<UserNationalId> result =
        UserNationalId.create(id: '12345678901234');
    expect(result.isLeft, true);
  });
}
