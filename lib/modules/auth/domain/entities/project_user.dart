import 'package:equatable/equatable.dart';
import 'package:kwalu_selli/core/utils/values/entities.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/core/utils/values/unique_entity_id.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/value_objects.dart';

class ProductUser extends Entities<_ProductObject> {
  ProductUser._(this.object, this._id) : super(object, _id);

  UniqueEntityId get id => _id ?? UniqueEntityId('');
  static Result<ProductUser> create(
      {required UniqueEntityId id,
      required UserPassword password,
      required UserEmailAddress email}) {
    return Result<ProductUser>.ok(
        value: ProductUser._(
            _ProductObject(
              password,
              email,
            ),
            id));
  }

  final UniqueEntityId? _id;
  final _ProductObject object;
}

class _ProductObject extends Equatable {
  const _ProductObject(this.password, this.emailAddress);

  final UserPassword password;
  final UserEmailAddress emailAddress;

  @override
  List<Object?> get props => [password.value, emailAddress.value];
}
