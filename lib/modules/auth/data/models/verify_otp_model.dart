import '../../../../core/model/i_cache_model_params.dart';
import '../../domain/entities/project_user.dart';

class VerifyOtpModel extends ICacheWithModel {
  VerifyOtpModel(this.otp);

  factory VerifyOtpModel.fromDomain(ProductUser user) =>
      VerifyOtpModel(user.object.otp!.value);

  @override
  Map<String, dynamic> assignJson() => <String, dynamic>{
        'otp': otp,
      };

  final String otp;
}
