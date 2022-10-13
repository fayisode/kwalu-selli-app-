import 'package:flutter_test/flutter_test.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/core/utils/values/unique_entity_id.dart';
import 'package:kwalu_selli/modules/auth/data/models/create_account_model.dart';
import 'package:kwalu_selli/modules/auth/domain/entities/user_profile.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/value_objects.dart';

void main() {
  test('given a User Profile Entity create a model', () {
    final CreateAccountModel createAccountModel =
        CreateAccountModel.fromDomain(_userProfileEntity.getValue);
    expect(createAccountModel, isA<CreateAccountModel>());
    expect(createAccountModel, _model);
  });

  test('given a CreateAccountModel return a json value', () {
    final Map<String, dynamic> json = _model.toJson();
    expect(json, isA<Map<String, dynamic>>());
    expect(json, _jsonValue);
  });
}

final Result<UserProfile> _userProfileEntity = UserProfile.create(
  id: UniqueEntityId(''),
  firstName: UserName.create(name: _testValue()).getValue,
  email: UserEmailAddress.create(email: _email()).getValue,
  nationalId: UserNationalId.create(id: _userId()).getValue,
  phoneNumber: UserPhoneNumber.create(phoneNumber: _phoneNumber()).getValue,
  password: UserPassword.create(password: _password()).getValue,
  location: _testValue(),
  lastName: UserName.create(name: _testValue()).getValue,
);

String _password() => '12345678';

String _testValue() => 'test';

String _phoneNumber() => '76675598';

String _email() => 'test@test.com';

String _userId() => '1234567890123';

final CreateAccountModel _model = CreateAccountModel(
  firstName: _testValue(),
  lastName: _testValue(),
  email: _email(),
  nationalId: _userId(),
  phoneNumber: _phoneNumber(),
  password: _password(),
  location: _testValue(),
);

final Map<String, dynamic> _jsonValue = <String, dynamic>{
  'email': _email(),
  'password': _password(),
  'firstName': _testValue(),
  'lastName': _testValue(),
  'nationalId': _userId(),
  'phoneNumber': _phoneNumber(),
  'location': _testValue(),
};
