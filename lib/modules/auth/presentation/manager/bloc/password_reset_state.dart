part of 'password_reset_bloc.dart';

@freezed
class PasswordResetState with _$PasswordResetState {
  factory PasswordResetState({
    required Result<UserEmailAddress> emailAddress,
    required Result<UserPassword> password,
    required Result<UserOtp> otp,
    required bool showErrorMessages,
    required bool isSubmitting,
    required IApiResponse? response,
  }) = _PasswordResetState;

  factory PasswordResetState.initial() => PasswordResetState(
        emailAddress: UserEmailAddress.create(),
        password: UserPassword.create(password: ''),
        otp: UserOtp.create(''),
        showErrorMessages: false,
        isSubmitting: false,
        response: null,
      );
}
