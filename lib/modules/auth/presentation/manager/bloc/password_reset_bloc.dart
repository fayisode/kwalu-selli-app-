import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/error/api_error_response.dart';
import '../../../../../core/utils/values/result.dart';
import '../../../domain/value_objects/email_address.dart';
import '../../../domain/value_objects/user_otp.dart';
import '../../../domain/value_objects/user_password.dart';

part 'password_reset_bloc.freezed.dart';
part 'password_reset_event.dart';
part 'password_reset_state.dart';

class PasswordResetBloc extends Bloc<PasswordResetEvent, PasswordResetState> {
  PasswordResetBloc() : super(PasswordResetState.initial()) {
    on<PasswordResetEvent>((
      PasswordResetEvent event,
      Emitter<PasswordResetState> emit,
    ) async {
      await event.map(
        emailChanged: (_EmailChanged value) {
          emit(
            state.copyWith(
              emailAddress: UserEmailAddress.create(
                email: value.input,
              ),
              response: null,
              isSubmitting: false,
            ),
          );
        },
        otpChanged: (_OtpChanged value) {
          emit(
            state.copyWith(
              otp: UserOtp.create(
                value.input,
              ),
              response: null,
              isSubmitting: false,
            ),
          );
        },
        passwordChanged: (_PasswordChanged value) {
          emit(
            state.copyWith(
              password: UserPassword.create(
                password: value.input,
              ),
              response: null,
              isSubmitting: false,
            ),
          );
        },
        resetPasswordUsed: (_ResetPasswordUsed value) {
          IApiResponse? response;
          final Result<Object> userInput = state.emailAddress;

          if (userInput.isRight) {
            emit(
              state.copyWith(
                response: null,
                isSubmitting: true,
              ),
            );
          }
          emit(
            state.copyWith(
              showErrorMessages: true,
              response: response,
              isSubmitting: false,
            ),
          );
        },
        changedPasswordUsed: (_ChangePasswordUsed value) {
          IApiResponse? response;
          final Result<Object> userInput = state.password;

          if (userInput.isRight) {
            emit(
              state.copyWith(
                response: null,
                isSubmitting: true,
              ),
            );
          }
          emit(
            state.copyWith(
              showErrorMessages: true,
              response: response,
              isSubmitting: false,
            ),
          );
        },
        verifyOtpUsed: (_VerifyOtpUsed value) {
          IApiResponse? response;
          final Result<Object> userInput = state.otp;

          if (userInput.isRight) {
            emit(
              state.copyWith(
                response: null,
                isSubmitting: true,
              ),
            );
          }
          emit(
            state.copyWith(
              showErrorMessages: true,
              response: response,
              isSubmitting: false,
            ),
          );
        },
      );
    });
  }
}
