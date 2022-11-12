// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../modules/auth/data/data_sources/auth_data_source.dart' as _i6;
import '../../modules/auth/data/repositories/auth_repo_impl.dart' as _i8;
import '../../modules/auth/domain/repositories/i_auth_repo.dart' as _i7;
import '../../modules/auth/domain/use_cases/change_user_passsword_use_case.dart'
    as _i12;
import '../../modules/auth/domain/use_cases/create_new_account_use_case.dart'
    as _i13;
import '../../modules/auth/domain/use_cases/log_into_account_use_case.dart'
    as _i9;
import '../../modules/auth/domain/use_cases/user_reset_password_usecase.dart'
    as _i10;
import '../../modules/auth/domain/use_cases/verify_otp_usecase.dart' as _i11;
import '../../modules/auth/presentation/manager/bloc/login_bloc.dart' as _i14;
import '../../modules/auth/presentation/manager/bloc/password_reset_bloc.dart'
    as _i15;
import '../../modules/auth/presentation/manager/bloc/register_bloc.dart'
    as _i16;
import '../database/cache.dart' as _i5;
import '../utils/dio/dio_injectable.dart' as _i17;
import 'injectable_classs/secure_storage.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final dioInjectionModule = _$DioInjectionModule();
  final secureStorageInjectionModule = _$SecureStorageInjectionModule();
  gh.lazySingleton<_i3.Dio>(() => dioInjectionModule.dio);
  gh.lazySingleton<_i4.FlutterSecureStorage>(
      () => secureStorageInjectionModule.secureStorage);
  gh.lazySingleton<_i5.ICache>(() => _i5.ResponseCache());
  gh.factory<_i6.AuthApi>(() => _i6.AuthApi(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i6.IAuthDataSource>(() => _i6.AuthDataSourceImpl(
        get<_i6.AuthApi>(),
        get<_i4.FlutterSecureStorage>(),
      ));
  gh.lazySingleton<_i7.IAuthRepo>(
      () => _i8.AuthRepoImpl(get<_i6.IAuthDataSource>()));
  gh.factory<_i9.LoginIntoAccountUseCase>(
      () => _i9.LoginIntoAccountUseCase(get<_i7.IAuthRepo>()));
  gh.factory<_i10.UserResetPasswordUseCase>(
      () => _i10.UserResetPasswordUseCase(get<_i7.IAuthRepo>()));
  gh.factory<_i11.VerifyOtpUseCase>(
      () => _i11.VerifyOtpUseCase(get<_i7.IAuthRepo>()));
  gh.factory<_i12.ChangeUserPasswordUseCase>(
      () => _i12.ChangeUserPasswordUseCase(get<_i7.IAuthRepo>()));
  gh.factory<_i13.CreateNewAccountUseCase>(
      () => _i13.CreateNewAccountUseCase(get<_i7.IAuthRepo>()));
  gh.factory<_i14.LoginBloc>(
      () => _i14.LoginBloc(get<_i9.LoginIntoAccountUseCase>()));
  gh.factory<_i15.PasswordResetBloc>(() => _i15.PasswordResetBloc(
        get<_i10.UserResetPasswordUseCase>(),
        get<_i12.ChangeUserPasswordUseCase>(),
        get<_i11.VerifyOtpUseCase>(),
      ));
  gh.factory<_i16.RegisterBloc>(
      () => _i16.RegisterBloc(get<_i13.CreateNewAccountUseCase>()));
  return get;
}

class _$DioInjectionModule extends _i17.DioInjectionModule {}

class _$SecureStorageInjectionModule extends _i18.SecureStorageInjectionModule {
}
