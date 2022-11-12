import 'package:equatable/equatable.dart';
import 'package:kwalu_selli/modules/auth/domain/entities/project_user.dart';

class LogInToAccountModel extends Equatable {
  const LogInToAccountModel({
    required this.email,
    required this.password,
  });

  factory LogInToAccountModel.fromDomain(ProductUser domain) =>
      LogInToAccountModel(
        email: domain.object.emailAddress?.value ?? '',
        password: domain.object.password?.value ?? '',
      );

  final String email;
  final String password;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'email': email,
        'password': password,
      };

  @override
  List<Object?> get props => <Object?>[
        email,
        password,
      ];
}
