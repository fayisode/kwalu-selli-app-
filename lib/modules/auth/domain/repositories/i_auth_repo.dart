import 'package:kwalu_selli/core/utils/error/api_error_response.dart';
import 'package:kwalu_selli/modules/auth/domain/entities/user_profile.dart';

import '../entities/project_user.dart';

abstract class IAuthRepo {
  Future<IApiResponse> signUpUser(UserProfile user);
  Future<IApiResponse> signInUser(ProductUser user);
  Future<IApiResponse> changePassword(ProductUser user);
  Future<IApiResponse> resetPassword(ProductUser user);
  Future<IApiResponse> verifyOtp(ProductUser user);
}
