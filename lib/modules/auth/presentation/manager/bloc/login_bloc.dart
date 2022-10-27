import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/error/api_error_response.dart';
import '../../../../../core/utils/values/result.dart';
import '../../../../../core/utils/values/unique_entity_id.dart';
import '../../../domain/entities/project_user.dart';
import '../../../domain/use_cases/log_into_account_use_case.dart';
import '../../../domain/value_objects/value_objects.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._accountUseCase) : super(LoginState.initial()) {
    on<LoginEvent>((
      LoginEvent event,
      Emitter<LoginState> emit,
    ) async {
      await event.map(
        emailChanged: (_EmailChanged value) {
          emit(state.copyWith(
            emailAddress: UserEmailAddress.create(email: value.email),
            response: null,
            isSubmitting: false,
          ));
        },
        passwordChanged: (_PasswordChanged value) {
          emit(
            state.copyWith(
              password: UserPassword.create(password: value.password),
              response: null,
              isSubmitting: false,
            ),
          );
        },
        submitUsed: (_) async {
          IApiResponse? useCaseResponse;
          final Result<Object> userInputResult = _checkIfInputValid();
          if (userInputResult.isRight) {
            emit(
              state.copyWith(
                response: null,
                isSubmitting: true,
              ),
            );
            useCaseResponse = await _loginUser();
          }
          emit(
            state.copyWith(
              isSubmitting: false,
              showErrorMessages: true,
              response: useCaseResponse,
            ),
          );
        },
        passwordVisibilityToggled: (_) {
          emit(
            state.copyWith(
              showPassword: !state.showPassword,
              response: null,
              isSubmitting: false,
            ),
          );
        },
      );
    });
  }

  Result<Object> _checkIfInputValid() => Result<Object>.combile(
        results: <Result<Object>>[
          state.emailAddress,
          state.password,
        ],
      );

  Future<IApiResponse?> _loginUser() async {
    IApiResponse? useCaseResponse;
    if (_createUserEntity.isRight) {
      useCaseResponse = await _accountUseCase(_createUserEntity.getValue);
    }
    return useCaseResponse;
  }

  Result<ProductUser> get _createUserEntity => ProductUser.create(
        id: UniqueEntityId(''),
        password: state.password.getValue,
        email: state.emailAddress.getValue,
      );

  final LoginIntoAccountUseCase _accountUseCase;
}
