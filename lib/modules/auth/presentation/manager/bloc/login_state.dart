part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    required Result<UserEmailAddress> emailAddress,
    required Result<UserPassword> password,
    required bool isSubmitting,
    required bool showPassword,
    required bool showErrorMessages,
    required IApiResponse? response,
  }) = _LoginState;
  factory LoginState.initial() => LoginState(
        emailAddress: UserEmailAddress.create(),
        password: UserPassword.create(password: ''),
        isSubmitting: false,
        showPassword: false,
        showErrorMessages: false,
        response: null,
      );
}
