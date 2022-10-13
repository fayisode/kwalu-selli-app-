part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState({
    required Result<UserEmailAddress> email,
    required Result<UserName> firstName,
    required Result<UserName> lastName,
    required Result<UserPassword> password,
    required Result<UserNationalId> nationalId,
    required Result<UserPhoneNumber> phoneNumber,
    required String location,
    required bool isSubmitting,
    required bool showErrorMessage,
    required bool moveToPersonalInfo,
    required IApiResponse? useCaseResponse,
    required String passwordString,
  }) = _RegisterState;
  factory RegisterState.initial() => RegisterState(
        email: UserEmailAddress.create(),
        firstName: UserName.create(),
        lastName: UserName.create(),
        password: UserPassword.create(password: ''),
        nationalId: UserNationalId.create(id: ''),
        phoneNumber: UserPhoneNumber.create(phoneNumber: ''),
        moveToPersonalInfo: false,
        location: '',
        isSubmitting: false,
        showErrorMessage: false,
        useCaseResponse: null,
        passwordString: '',
      );
}
