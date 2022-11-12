import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:kwalu_selli/modules/auth/data/models/create_account_model.dart';

import '../../../../core/model/i_cache_model_params.dart';
import '../../../../core/utils/dio/dio.dart';
import '../../../../core/utils/error/api_error_response.dart';
import '../../../../core/utils/extensions/task.dart';
import '../models/change_password_model.dart';
import '../models/login_to_account_model.dart';
import '../models/reset_password_model.dart';

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
  Future<IApiResponse> resetPassword(ResetPasswordModel model);
  Future<IApiResponse> verifyOtp(ICacheWithModel model);
  Future<IApiResponse> changePassword(ChangePasswordModel model);
}

@LazySingleton(as: IAuthDataSource)
class AuthDataSourceImpl implements IAuthDataSource {
  AuthDataSourceImpl(this._api, this._secureStorage);

  final FlutterSecureStorage _secureStorage;
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

  @override
  Future<IApiResponse> resetPassword(ResetPasswordModel model) => Task<dynamic>(
        () => _api.dioClient.put<Map<String, dynamic>>(
          '/reset-password',
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
  Future<IApiResponse> verifyOtp(ICacheWithModel model) => Task<dynamic>(
        () async => _api.dioClient.put<Map<String, dynamic>>(
          '/verify-otp',
          options: Options(
            contentType: Headers.formUrlEncodedContentType,
            responseType: ResponseType.json,
            headers: <String, dynamic>{
              'token': await getTokenFromStorage(),
              'identifier': await getIdentifierFromStorage(),
            },
          ),
          queryParameters: <String, dynamic>{},
          onReceiveProgress: (int a, int b) {},
          cancelToken: CancelToken(),
          data: await model.toJson(),
          onSendProgress: (int count, int total) {},
        ),
      ).attempt().mapResponseToApiResponse().run();
  @override
  Future<IApiResponse> changePassword(ChangePasswordModel model) =>
      Task<dynamic>(
        () async => _api.dioClient.post<Map<String, dynamic>>(
          '/change-password',
          options: Options(
            contentType: Headers.formUrlEncodedContentType,
            responseType: ResponseType.json,
            headers: <String, dynamic>{
              'token': await getTokenFromStorage(),
              'identifier': await getIdentifierFromStorage(),
            },
          ),
          queryParameters: <String, dynamic>{},
          onReceiveProgress: (int a, int b) {},
          cancelToken: CancelToken(),
          data: await model.toJson(),
          onSendProgress: (int count, int total) {},
        ),
      ).attempt().mapResponseToApiResponse().run();
  Future<String> getIdentifierFromStorage() async {
    String? identifier;
    try {
      identifier = await _secureStorage.read(key: 'identifier');
    } catch (e) {}

    return identifier ?? '';
  }

  Future<String> getTokenFromStorage() async {
    String? token;
    try {
      token = await _secureStorage.read(key: 'token');
    } catch (e) {}

    return token ?? '';
  }
}
