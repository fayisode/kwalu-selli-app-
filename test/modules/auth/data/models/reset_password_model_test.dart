import 'package:flutter_test/flutter_test.dart';
import 'package:kwalu_selli/core/utils/values/unique_entity_id.dart';
import 'package:kwalu_selli/modules/auth/data/models/reset_password_model.dart';
import 'package:kwalu_selli/modules/auth/domain/entities/project_user.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/email_address.dart';

void main() {
  test('given a user account entity create a model', () {
    final ResetPasswordModel resetPasswordModel =
        ResetPasswordModel.fromDomain(_productUser);

    expect(resetPasswordModel, isA<ResetPasswordModel>());
    expect(resetPasswordModel, _model);
  });

  test('given a reset password model, return a json ', () {
    final Map<String, dynamic> json = _model.toJson();
    expect(json, isA<Map<String, dynamic>>());
    expect(json, _jsonValue);
  });
}

final ResetPasswordModel _model = ResetPasswordModel(
  email: _email(),
);

Map<String, dynamic> _jsonValue = <String, dynamic>{
  'email': _email(),
};

String _email() => 'test@test.com';
final ProductUser _productUser = ProductUser.create(
  id: UniqueEntityId(''),
  email: UserEmailAddress.create(email: _email()).getValue,
).getValue;
