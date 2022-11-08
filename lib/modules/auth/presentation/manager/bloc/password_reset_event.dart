part of 'password_reset_bloc.dart';

@freezed
class PasswordResetEvent with _$PasswordResetEvent {
  const factory PasswordResetEvent.emailChanged(String input) = _EmailChanged;

  const factory PasswordResetEvent.otpChanged(String input) = _OtpChanged;

  const factory PasswordResetEvent.passwordChanged(String input) =
      _PasswordChanged;

  const factory PasswordResetEvent.resetPasswordUsed() = _ResetPasswordUsed;

  const factory PasswordResetEvent.changedPasswordUsed() = _ChangePasswordUsed;

  const factory PasswordResetEvent.verifyOtpUsed() = _VerifyOtpUsed;
}
