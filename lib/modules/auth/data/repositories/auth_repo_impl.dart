import 'package:injectable/injectable.dart';
import 'package:kwalu_selli/core/utils/error/api_error_response.dart';
import 'package:kwalu_selli/modules/auth/data/data_sources/auth_data_source.dart';
import 'package:kwalu_selli/modules/auth/data/models/create_account_model.dart';
import 'package:kwalu_selli/modules/auth/domain/entities/user_profile.dart';
import 'package:kwalu_selli/modules/auth/domain/repositories/i_auth_repo.dart';

import '../../domain/entities/project_user.dart';
import '../models/login_to_account_model.dart';

@LazySingleton(as: IAuthRepo)
class AuthRepoImpl extends IAuthRepo {
  AuthRepoImpl(this._dataSource);

  final IAuthDataSource _dataSource;

  @override
  Future<IApiResponse> signUpUser(UserProfile user) =>
      _dataSource.signUpUser(CreateAccountModel.fromDomain(user));

  @override
  Future<IApiResponse> signInUser(ProductUser user) =>
      _dataSource.signInUser(LogInToAccountModel.fromDomain(user));
}
