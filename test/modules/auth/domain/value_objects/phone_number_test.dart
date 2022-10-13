import 'package:flutter_test/flutter_test.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/phone_number.dart';

void main() {
  test('given an invalid phone number, return failed result', () {
    final Result<UserPhoneNumber> result = UserPhoneNumber.create(
      phoneNumber: '0801',
    );

    expect(result.isLeft, true);
  });

  test('given a valid phone number, return success result', () {
    const String phoneNum = '78665627';
    final Result<UserPhoneNumber> result = UserPhoneNumber.create(
      phoneNumber: phoneNum,
    );

    expect(result.isRight, true);
    expect(result.getValue.value, phoneNum);
  });

  test(
      "given a value that doesn't meet the require length, return a failed result",
      () {
    final Result<UserPhoneNumber> result = UserPhoneNumber.create(
      phoneNumber: '7897088',
    );
    expect(result.isLeft, true);

    final Result<UserPhoneNumber> result2 = UserPhoneNumber.create(
      phoneNumber: '78970888778',
    );
    expect(result2.isLeft, true);
  });
}
