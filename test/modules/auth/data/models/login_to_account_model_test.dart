import 'package:flutter_test/flutter_test.dart';
import 'package:kwalu_selli/core/utils/values/unique_entity_id.dart';
import 'package:kwalu_selli/modules/auth/data/models/login_to_account_model.dart';
import 'package:kwalu_selli/modules/auth/domain/entities/project_user.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/value_objects.dart';

void main() {
  test('given a user account entity create a model', () {
    final LogInToAccountModel logInToAccountModel =
        LogInToAccountModel.fromDomain(_productUser);

    expect(logInToAccountModel, isA<LogInToAccountModel>());
    expect(logInToAccountModel, _model);
  });

  test('given a login model, return a json ', () {
    final Map<String, dynamic> json = _model.toJson();
    expect(json, isA<Map<String, dynamic>>());
    expect(json, _jsonValue);
  });
}

final Map<String, dynamic> _jsonValue = <String, dynamic>{
  'email': _email(),
  'password': _password(),
};
String _email() => 'test@test.com';
String _password() => '12345678';

final LogInToAccountModel _model = LogInToAccountModel(
  email: _email(),
  password: _password(),
);

final ProductUser _productUser = ProductUser.create(
  id: UniqueEntityId(''),
  email: UserEmailAddress.create(email: _email()).getValue,
  password: UserPassword.create(password: _password()).getValue,
).getValue;
