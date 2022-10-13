part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.emailAddressChanged(String email) =
      _EmailAddressChanged;
  const factory RegisterEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory RegisterEvent.firstNameChanged(String firstName) =
      _FirstNameChanged;
  const factory RegisterEvent.lastNameChanged(String lastName) =
      _LastNameChanged;
  const factory RegisterEvent.nationalIdChanged(String nationalId) =
      _NationalIdChanged;
  const factory RegisterEvent.phoneNumberChanged(String phoneNumber) =
      _PhoneNumberChanged;
  const factory RegisterEvent.locationChanged(String location) =
      _LocationChanged;
  const factory RegisterEvent.submitUsed() = _SubmitUsed;
  const factory RegisterEvent.moveToPersonalInfoUsed() =
      _MoveToPersonalInfoUsed;
  const factory RegisterEvent.clearMoveToPersonalInfoStateUsed() =
      _ClearMoveToPersonalInfoStateUsed;
}
