import '../../../../core/model/i_cache_model_params.dart';
import '../../domain/entities/project_user.dart';

class ChangePasswordModel extends ICacheWithModel {
  ChangePasswordModel(this.oldPassword);

  factory ChangePasswordModel.fromDomain(ProductUser user) =>
      ChangePasswordModel(user.object.password!.value);

  @override
  Map<String, dynamic> assignJson() => <String, dynamic>{
        'password': oldPassword,
      };

  final String oldPassword;
}
