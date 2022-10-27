// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../modules/auth/data/data_sources/auth_data_source.dart' as _i5;
import '../../modules/auth/data/repositories/auth_repo_impl.dart' as _i7;
import '../../modules/auth/domain/repositories/i_auth_repo.dart' as _i6;
import '../../modules/auth/domain/use_cases/create_new_account_use_case.dart'
    as _i9;
import '../../modules/auth/domain/use_cases/log_into_account_use_case.dart'
    as _i8;
import '../../modules/auth/presentation/manager/bloc/login_bloc.dart' as _i10;
import '../../modules/auth/presentation/manager/bloc/register_bloc.dart'
    as _i11;
import '../database/cache.dart' as _i4;
import '../utils/dio/dio_injectable.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.Dio>(() => dioInjectionModule.dio);
  gh.lazySingleton<_i4.ICache>(() => _i4.ResponseCache());
  gh.factory<_i5.AuthApi>(() => _i5.AuthApi(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i5.IAuthDataSource>(
      () => _i5.AuthDataSourceImpl(get<_i5.AuthApi>()));
  gh.lazySingleton<_i6.IAuthRepo>(
      () => _i7.AuthRepoImpl(get<_i5.IAuthDataSource>()));
  gh.factory<_i8.LoginIntoAccountUseCase>(
      () => _i8.LoginIntoAccountUseCase(get<_i6.IAuthRepo>()));
  gh.factory<_i9.CreateNewAccountUseCase>(
      () => _i9.CreateNewAccountUseCase(get<_i6.IAuthRepo>()));
  gh.factory<_i10.LoginBloc>(
      () => _i10.LoginBloc(get<_i8.LoginIntoAccountUseCase>()));
  gh.factory<_i11.RegisterBloc>(
      () => _i11.RegisterBloc(get<_i9.CreateNewAccountUseCase>()));
  return get;
}

class _$DioInjectionModule extends _i12.DioInjectionModule {}
