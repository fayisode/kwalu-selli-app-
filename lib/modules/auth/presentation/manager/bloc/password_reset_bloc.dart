import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/error/api_error_response.dart';
import '../../../../../core/utils/values/result.dart';
import '../../../../../core/utils/values/unique_entity_id.dart';
import '../../../domain/entities/project_user.dart';
import '../../../domain/use_cases/change_user_passsword_use_case.dart';
import '../../../domain/use_cases/user_reset_password_usecase.dart';
import '../../../domain/use_cases/verify_otp_usecase.dart';
import '../../../domain/value_objects/email_address.dart';
import '../../../domain/value_objects/user_otp.dart';
import '../../../domain/value_objects/user_password.dart';

part 'password_reset_bloc.freezed.dart';
part 'password_reset_event.dart';
part 'password_reset_state.dart';

@injectable
class PasswordResetBloc extends Bloc<PasswordResetEvent, PasswordResetState> {
  PasswordResetBloc(
    this._resetPasswordUseCase,
    this._changePasswordUseCase,
    this._verifyOtpUseCase,
  ) : super(PasswordResetState.initial()) {
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
        resetPasswordUsed: (_ResetPasswordUsed value) async {
          IApiResponse? response;
          final Result<Object> userInput = state.emailAddress;

          if (userInput.isRight) {
            emit(
              state.copyWith(
                response: null,
                isSubmitting: true,
              ),
            );

            response = await _resetPassword();
          }
          emit(
            state.copyWith(
              showErrorMessages: true,
              response: response,
              isSubmitting: false,
            ),
          );
        },
        changedPasswordUsed: (_ChangePasswordUsed value) async {
          IApiResponse? response;
          final Result<Object> userInput = state.password;

          if (userInput.isRight) {
            emit(
              state.copyWith(
                response: null,
                isSubmitting: true,
              ),
            );
            response = await _changePassword();
          }
          emit(
            state.copyWith(
              showErrorMessages: true,
              response: response,
              isSubmitting: false,
            ),
          );
        },
        verifyOtpUsed: (_VerifyOtpUsed value) async {
          IApiResponse? response;
          final Result<Object> userInput = state.otp;

          if (userInput.isRight) {
            emit(
              state.copyWith(
                response: null,
                isSubmitting: true,
              ),
            );
            response = await _verifyOtp();
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
  Future<IApiResponse?> _resetPassword() async {
    ProductUser user() => ProductUser.create(
          id: UniqueEntityId(''),
          email: state.emailAddress.getValue,
        ).getValue;

    IApiResponse? useCaseResponse;
    if (state.emailAddress.isRight) {
      useCaseResponse = await _resetPasswordUseCase(
        user(),
      );
      await _cacheSuccessResponse(useCaseResponse);
    }
    return useCaseResponse;
  }

  Future<void> _cacheSuccessResponse(IApiResponse useCaseResponse) async {
    if (useCaseResponse.status == 1) {
      await useCaseResponse.cacheResponse();
    }
  }

  Future<IApiResponse?> _verifyOtp() async {
    ProductUser user() => ProductUser.create(
          id: UniqueEntityId(''),
          email: null,
          otp: state.otp.getValue,
        ).getValue;

    IApiResponse? useCaseResponse;
    if (state.otp.isRight) {
      useCaseResponse = await _verifyOtpUseCase(
        user(),
      );
      await _cacheSuccessResponse(useCaseResponse);
    }
    return useCaseResponse;
  }

  Future<IApiResponse?> _changePassword() async {
    ProductUser user() => ProductUser.create(
          id: UniqueEntityId(''),
          email: null,
          password: state.password.getValue,
        ).getValue;

    IApiResponse? useCaseResponse;
    if (state.password.isRight) {
      useCaseResponse = await _changePasswordUseCase(
        user(),
      );
      await _cacheSuccessResponse(useCaseResponse);
    }
    return useCaseResponse;
  }

  final UserResetPasswordUseCase _resetPasswordUseCase;
  final ChangeUserPasswordUseCase _changePasswordUseCase;
  final VerifyOtpUseCase _verifyOtpUseCase;
}
