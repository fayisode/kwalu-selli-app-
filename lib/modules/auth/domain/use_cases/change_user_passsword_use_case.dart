import 'package:injectable/injectable.dart';

import '../../../../core/utils/error/api_error_response.dart';
import '../../../../core/utils/usecase/use_cases.dart';
import '../entities/project_user.dart';
import '../repositories/i_auth_repo.dart';

@injectable
class ChangeUserPasswordUseCase extends UseCase<IApiResponse, ProductUser> {
  ChangeUserPasswordUseCase(this._repo);

  @override
  Future<IApiResponse> call(ProductUser params) => _repo.changePassword(params);
  final IAuthRepo _repo;
}
