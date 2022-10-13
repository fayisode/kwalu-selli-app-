import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/error/api_error_response.dart';
import '../../../../../core/utils/values/result.dart';
import '../../../../../core/utils/values/unique_entity_id.dart';
import '../../../domain/entities/user_profile.dart';
import '../../../domain/use_cases/create_new_account_use_case.dart';
import '../../../domain/value_objects/value_objects.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this._accountUseCase) : super(RegisterState.initial()) {
    on<RegisterEvent>((
      RegisterEvent event,
      Emitter<RegisterState> emit,
    ) async {
      await event.map(
        emailAddressChanged: (_EmailAddressChanged value) {
          emit(
            state.copyWith(
              email: UserEmailAddress.create(email: value.email),
              useCaseResponse: null,
              isSubmitting: false,
            ),
          );
        },
        passwordChanged: (_PasswordChanged value) {
          emit(
            state.copyWith(
              password: UserPassword.create(password: value.password),
              passwordString: value.password,
              useCaseResponse: null,
              isSubmitting: false,
            ),
          );
        },
        firstNameChanged: (_FirstNameChanged value) {
          emit(
            state.copyWith(
              firstName: UserName.create(name: value.firstName),
              useCaseResponse: null,
              isSubmitting: false,
            ),
          );
        },
        lastNameChanged: (_LastNameChanged value) {
          emit(
            state.copyWith(
              lastName: UserName.create(name: value.lastName),
              useCaseResponse: null,
              isSubmitting: false,
            ),
          );
        },
        nationalIdChanged: (_NationalIdChanged value) {
          emit(
            state.copyWith(
              nationalId: UserNationalId.create(id: value.nationalId),
              useCaseResponse: null,
              isSubmitting: false,
            ),
          );
          debugPrint(state.nationalId.toString());
        },
        phoneNumberChanged: (_PhoneNumberChanged value) {
          emit(
            state.copyWith(
              phoneNumber:
                  UserPhoneNumber.create(phoneNumber: value.phoneNumber),
              useCaseResponse: null,
              isSubmitting: false,
            ),
          );
        },
        locationChanged: (_LocationChanged value) {
          emit(
            state.copyWith(
              location: value.location,
              useCaseResponse: null,
              isSubmitting: false,
            ),
          );
        },
        submitUsed: (_SubmitUsed value) async {
          IApiResponse? useCaseResponse;
          final Result<Object> userInputResult = _checkIfValueValid();
          if (userInputResult.isRight) {
            emit(
              state.copyWith(
                useCaseResponse: null,
                isSubmitting: true,
              ),
            );
            useCaseResponse = await _registerUser(emit);
          }
          emit(
            state.copyWith(
              isSubmitting: false,
              showErrorMessage: true,
              useCaseResponse: useCaseResponse,
            ),
          );
        },
        moveToPersonalInfoUsed: (_MoveToPersonalInfoUsed value) {
          final Result<Object> userInputResult = _checkIfAccountValueValid();
          if (userInputResult.isRight) {
            emit(
              state.copyWith(
                moveToPersonalInfo: true,
                useCaseResponse: null,
                isSubmitting: false,
                showErrorMessage: false,
              ),
            );
          } else {
            emit(
              state.copyWith(
                moveToPersonalInfo: false,
                useCaseResponse: null,
                isSubmitting: false,
                showErrorMessage: true,
              ),
            );
          }
        },
        clearMoveToPersonalInfoStateUsed:
            (_ClearMoveToPersonalInfoStateUsed value) {
          emit(
            state.copyWith(
              moveToPersonalInfo: false,
              useCaseResponse: null,
              isSubmitting: false,
              showErrorMessage: false,
            ),
          );
        },
      );
    });
  }

  Result<Object> _checkIfValueValid() => Result<Object>.combile(
        results: <Result<Object>>[
          state.firstName,
          state.lastName,
          state.email,
          state.password,
          state.phoneNumber,
          state.nationalId,
        ],
      );

  Future<IApiResponse?> _registerUser(
    Emitter<RegisterState> emit,
  ) async {
    IApiResponse? useCaseResponse;
    if (_createUserProfileEntity.isRight) {
      useCaseResponse =
          await _accountUseCase(_createUserProfileEntity.getValue);
    }
    return useCaseResponse;
  }

  Result<UserProfile> get _createUserProfileEntity => UserProfile.create(
        id: UniqueEntityId(''),
        firstName: state.firstName.getValue,
        email: state.email.getValue,
        nationalId: state.nationalId.getValue,
        phoneNumber: state.phoneNumber.getValue,
        password: state.password.getValue,
        location: state.location,
        lastName: state.lastName.getValue,
      );

  Result<Object> _checkIfAccountValueValid() => Result<Object>.combile(
        results: <Result<Object>>[
          state.email,
          state.password,
          state.phoneNumber
        ],
      );

  final CreateNewAccountUseCase _accountUseCase;
}
