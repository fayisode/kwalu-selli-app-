import 'package:equatable/equatable.dart';

import '../../domain/entities/user_profile.dart';

class CreateAccountModel extends Equatable {
  const CreateAccountModel({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.nationalId,
    required this.phoneNumber,
    required this.location,
  });
  factory CreateAccountModel.fromDomain(UserProfile domain) =>
      CreateAccountModel(
        email: domain.object.emailAddress!.value,
        password: domain.object.password!.value,
        firstName: domain.object.firstName!.value,
        lastName: domain.object.lastName!.value,
        nationalId: domain.object.nationalId!.value,
        phoneNumber: domain.object.phoneNumber!.value,
        location: domain.object.location!,
      );

  final String email;
  final String password;
  final String firstName;
  final String lastName;
  final String nationalId;
  final String phoneNumber;
  final String location;

  @override
  List<Object?> get props => [
        email,
        password,
        firstName,
        lastName,
        nationalId,
        phoneNumber,
        location,
      ];

  Map<String, dynamic> toJson() => <String, dynamic>{
        'email': email,
        'password': password,
        'firstName': firstName,
        'lastName': lastName,
        'nationalId': nationalId,
        'phone': phoneNumber,
        'location': location,
      };
}
