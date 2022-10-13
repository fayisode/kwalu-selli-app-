import 'package:kwalu_selli/core/utils/error/api_error_response.dart';
import 'package:kwalu_selli/modules/auth/domain/entities/user_profile.dart';

abstract class IAuthRepo {
  Future<IApiResponse> signUpUser(UserProfile user);
}
