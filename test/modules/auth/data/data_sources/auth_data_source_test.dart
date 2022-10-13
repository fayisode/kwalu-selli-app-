import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:http_mock_adapter/src/handlers/request_handler.dart';
import 'package:kwalu_selli/core/utils/error/api_error_response.dart';
import 'package:kwalu_selli/modules/auth/data/data_sources/auth_data_source.dart';
import 'package:kwalu_selli/modules/auth/data/models/create_account_model.dart';

void main() {
  late AuthDataSourceImpl dataSource;
  late AuthApi api;
  late Dio dio;
  late DioAdapter dioAdapter;

  setUp(() {
    dio = Dio();
    dioAdapter = DioAdapter(dio: dio);
    dio.httpClientAdapter = dioAdapter;
    api = AuthApi(dio: dio);
    dataSource = AuthDataSourceImpl(api);
  });

  group('Sign Up', () {
    const String testPath = '/signup';
    test('making a signup with valid details, return a success request',
        () async {
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(201, {'status': 1}),
        data: _model.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );
      final IApiResponse result = await dataSource.signUpUser(_model);

      expect(result, isA<SuccessApiResponse>());
    });

    test('making a signup with invalid details, return a failed 404 request',
        () async {
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(404, {'status': 0}),
        data: _model.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );
      final IApiResponse result = await dataSource.signUpUser(_model);

      expect(result, isA<FailedApiResponse>());
    });

    test(
        'making a signup with internal server error, return a failed 500 request',
        () async {
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(500, {'status': 0}),
        data: _model.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );
      final IApiResponse result = await dataSource.signUpUser(_model);

      expect(result, isA<FailedApiResponse>());
    });

    test('making a signup with conflict details, return a failed request',
        () async {
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(200, {'status': 0}),
        data: _model.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );
      final IApiResponse result = await dataSource.signUpUser(_model);

      expect(result, isA<FailedApiResponse>());
    });
  });
}

const String _baseUrl = 'https://kwalu-selli.herokuapp.com/api/v1/auth';

String _password() => '12345678';

String _testValue() => 'test';

String _phoneNumber() => '76675598';

String _email() => 'test@test.com';

String _userId() => '1234567890123';

final CreateAccountModel _model = CreateAccountModel(
  firstName: _testValue(),
  lastName: _testValue(),
  email: _email(),
  nationalId: _userId(),
  phoneNumber: _phoneNumber(),
  password: _password(),
  location: _testValue(),
);
