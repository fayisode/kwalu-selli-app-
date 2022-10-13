import 'package:injectable/injectable.dart';
import 'package:kwalu_selli/core/utils/error/api_error_response.dart';
import 'package:kwalu_selli/modules/auth/domain/entities/user_profile.dart';

import '../../../../core/utils/usecase/use_cases.dart';
import '../repositories/i_auth_repo.dart';

@injectable
class CreateNewAccountUseCase extends UseCase<IApiResponse, UserProfile> {
  CreateNewAccountUseCase(this._repo);

  @override
  Future<IApiResponse> call(UserProfile params) => _repo.signUpUser(params);
  final IAuthRepo _repo;
}
