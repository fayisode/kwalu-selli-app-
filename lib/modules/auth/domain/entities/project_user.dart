import 'package:equatable/equatable.dart';
import 'package:kwalu_selli/core/utils/values/entities.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/core/utils/values/unique_entity_id.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/value_objects.dart';

import '../value_objects/user_otp.dart';

class ProductUser extends Entities<_ProductObject> {
  ProductUser._(this.object, this._id) : super(object, _id);

  UniqueEntityId get id => _id ?? UniqueEntityId('');
  static Result<ProductUser> create({
    required UniqueEntityId id,
    required UserEmailAddress? email,
    UserPassword? password,
    UserOtp? otp,
  }) =>
      Result<ProductUser>.ok(
        value: ProductUser._(
          _ProductObject(
            password,
            email,
            otp,
          ),
          id,
        ),
      );

  final UniqueEntityId? _id;
  final _ProductObject object;
}

class _ProductObject extends Equatable {
  const _ProductObject(
    this.password,
    this.emailAddress,
    this.otp,
  );

  final UserPassword? password;
  final UserEmailAddress? emailAddress;
  final UserOtp? otp;

  @override
  List<Object?> get props => <Object?>[
        password?.value,
        emailAddress?.value,
        otp?.value,
      ];
}
