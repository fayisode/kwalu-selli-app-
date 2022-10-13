import 'package:flutter_test/flutter_test.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/core/utils/values/unique_entity_id.dart';
import 'package:kwalu_selli/modules/auth/domain/entities/user_profile.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/value_objects.dart';

void main() {
  test('given a valid value object/s, return a success result', () {
    final Result<UserProfile> result = UserProfile.create(
      id: UniqueEntityId(''),
      firstName: UserName.create(name: 'test').getValue,
      email: UserEmailAddress.create(email: 'test@test.com').getValue,
      nationalId: UserNationalId.create(id: '1234567890123').getValue,
      phoneNumber: UserPhoneNumber.create(phoneNumber: '76675550').getValue,
      password: UserPassword.create(password: 'testpassword').getValue,
      location: 'testsdjdjkfkjfdkja',
      lastName: UserName.create(name: 'test').getValue,
    );

    expect(result.isRight, true);
  });
}
