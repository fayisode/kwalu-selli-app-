import 'package:equatable/equatable.dart';
import 'package:kwalu_selli/core/utils/error/errors.dart';
import 'package:kwalu_selli/core/utils/values/entities.dart';
import 'package:kwalu_selli/core/utils/values/result.dart';
import 'package:kwalu_selli/core/utils/values/unique_entity_id.dart';
import 'package:kwalu_selli/modules/auth/domain/value_objects/value_objects.dart';

class UserProfile extends Entities<_UserProfileObject> {
  UserProfile._(this.object, this._id) : super(object, _id);
  UniqueEntityId get id => _id ?? UniqueEntityId('');
  static Result<UserProfile> create(
      {required UniqueEntityId id,
      required UserName firstName,
      required UserEmailAddress email,
      required UserNationalId nationalId,
      required UserPhoneNumber phoneNumber,
      required UserPassword password,
      required String location,
      required UserName lastName}) {
    try {
      return Result<UserProfile>.ok(
          value: UserProfile._(
              _UserProfileObject(
                firstName,
                lastName,
                email,
                location,
                password,
                phoneNumber,
                nationalId,
              ),
              id));
    } catch (e) {
      return Result<UserProfile>.fail(
          error: KwaluSelliValueError(e.toString()));
    }
  }

  final UniqueEntityId? _id;
  final _UserProfileObject object;
}

class _UserProfileObject extends Equatable {
  const _UserProfileObject(
    this.firstName,
    this.lastName,
    this.emailAddress,
    this.location,
    this.password,
    this.phoneNumber,
    this.nationalId,
  );

  final UserName? firstName;
  final UserName? lastName;
  final UserEmailAddress? emailAddress;
  final String? location;
  final UserPassword? password;
  final UserPhoneNumber? phoneNumber;
  final UserNationalId? nationalId;

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        emailAddress,
        location,
        password,
        phoneNumber,
        nationalId,
      ];
}
