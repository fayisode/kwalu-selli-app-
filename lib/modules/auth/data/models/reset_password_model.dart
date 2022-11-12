import 'package:equatable/equatable.dart';

import '../../domain/entities/project_user.dart';

class ResetPasswordModel extends Equatable {
  const ResetPasswordModel({
    required this.email,
  });
  factory ResetPasswordModel.fromDomain(ProductUser productUser) =>
      ResetPasswordModel(
        email: productUser.object.emailAddress!.value,
      );

  final String email;

  @override
  List<Object?> get props => <Object?>[email];

  Map<String, dynamic> toJson() => <String, dynamic>{
        'email': email,
      };
}
