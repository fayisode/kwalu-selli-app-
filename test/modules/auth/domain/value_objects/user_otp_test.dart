import 'package:flutter_test/flutter_test.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/user_otp.dart';

void main() {
  group('UserOtp', () {
    test('given an invalid otp, should return a failure', () {
      // arrange
      final Result<UserOtp> invalidOtp = UserOtp.create('123');
      // assert
      expect(invalidOtp.isRight, false);
      expect(invalidOtp.isLeft, true);

      // arrange
      final Result<UserOtp> invalidOtp2 = UserOtp.create('');
      // assert
      expect(invalidOtp2.isRight, false);
      expect(invalidOtp2.isLeft, true);
    });

    test('given a valid 4 digit otp, should return a success', () {
      // arrange
      final Result<UserOtp> validOtp = UserOtp.create('1234');
      // assert
      expect(validOtp.isRight, true);
      expect(validOtp.isLeft, false);
    });
  });
}
