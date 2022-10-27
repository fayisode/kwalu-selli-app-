import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kwalu_selli/modules/auth/data/models/create_account_model.dart';

import '../../../../core/utils/dio/dio.dart';
import '../../../../core/utils/error/api_error_response.dart';
import '../../../../core/utils/extensions/task.dart';
import '../models/login_to_account_model.dart';

@injectable
class AuthApi {
  AuthApi({required this.dio}) {
    dioClient = DioClient(_baseUrl, dio, interceptors: <Interceptor>[]);
  }

  late DioClient dioClient;
  final String _baseUrl = 'https://kwalu-selli.herokuapp.com/api/v1/auth';
  final Dio dio;
}

abstract class IAuthDataSource {
  Future<IApiResponse> signUpUser(CreateAccountModel model);
  Future<IApiResponse> signInUser(LogInToAccountModel model);
}

@LazySingleton(as: IAuthDataSource)
class AuthDataSourceImpl implements IAuthDataSource {
  AuthDataSourceImpl(this._api);

  final AuthApi _api;

  @override
  Future<IApiResponse> signUpUser(CreateAccountModel model) => Task<dynamic>(
        () => _api.dioClient.put<Map<String, dynamic>>(
          '/signup',
          options: Options(
            contentType: Headers.formUrlEncodedContentType,
            responseType: ResponseType.json,
          ),
          queryParameters: <String, dynamic>{},
          onReceiveProgress: (int a, int b) {},
          cancelToken: CancelToken(),
          data: model.toJson(),
          onSendProgress: (int count, int total) {},
        ),
      ).attempt().mapResponseToApiResponse().run();

  @override
  Future<IApiResponse> signInUser(LogInToAccountModel model) => Task<dynamic>(
        () => _api.dioClient.post<Map<String, dynamic>>(
          '/login',
          options: Options(
            contentType: Headers.formUrlEncodedContentType,
            responseType: ResponseType.json,
          ),
          queryParameters: <String, dynamic>{},
          onReceiveProgress: (int a, int b) {},
          cancelToken: CancelToken(),
          data: model.toJson(),
          onSendProgress: (int count, int total) {},
        ),
      ).attempt().mapResponseToApiResponse().run();
}
