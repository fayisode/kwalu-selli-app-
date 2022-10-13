import 'package:flutter_test/flutter_test.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/core/utils/values/unique_entity_id.dart';
import 'package:kwalu_selli/modules/auth/domain/entities/project_user.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/user_password.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/value_objects.dart';

void main() {
  test('given a value object/s, return a product user entity', () {
    final Result<ProductUser> result = ProductUser.create(
      id: UniqueEntityId(''),
      password: UserPassword.create(password: 'testpassword').getValue,
      email: UserEmailAddress.create(email: 'test@test.com').getValue,
    );

    expect(result.isRight, true);
  });
}
