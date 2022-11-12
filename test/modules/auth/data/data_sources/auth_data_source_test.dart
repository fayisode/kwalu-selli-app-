import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:http_mock_adapter/src/handlers/request_handler.dart';
import 'package:kwalu_selli/core/utils/error/api_error_response.dart';
import 'package:kwalu_selli/modules/auth/data/data_sources/auth_data_source.dart';
import 'package:kwalu_selli/modules/auth/data/models/change_password_model.dart';
import 'package:kwalu_selli/modules/auth/data/models/create_account_model.dart';
import 'package:kwalu_selli/modules/auth/data/models/login_to_account_model.dart';
import 'package:kwalu_selli/modules/auth/data/models/reset_password_model.dart';
import 'package:kwalu_selli/modules/auth/data/models/verify_otp_model.dart';
import 'package:mocktail/mocktail.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  late AuthDataSourceImpl dataSource;
  late AuthApi api;
  late Dio dio;
  late DioAdapter dioAdapter;
  late MockFlutterSecureStorage secureStorage;

  setUp(() {
    dio = Dio();
    dioAdapter = DioAdapter(dio: dio);
    dio.httpClientAdapter = dioAdapter;
    api = AuthApi(dio: dio);
    secureStorage = MockFlutterSecureStorage();
    dataSource = AuthDataSourceImpl(api, secureStorage);
  });

  group('Sign Up', () {
    const String testPath = '/signup';
    test('making a signup with valid details, return a success request',
        () async {
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(201, {'status': 1}),
        data: _signUpModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );
      final IApiResponse result = await dataSource.signUpUser(_signUpModel);

      expect(result, isA<SuccessApiResponse>());
    });

    test('making a signup with invalid details, return a failed 404 request',
        () async {
      const String message = 'Value not valid';
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) {
          final Map<String, Object> responseMap = {
            'status': 0,
            'message': message
          };
          return request.reply(404, responseMap);
        },
        data: _signUpModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );
      final IApiResponse result = await dataSource.signUpUser(_signUpModel);

      expect(result, isA<FailedApiResponse>());
      expect(result.message, message);
    });

    test(
        'making a signup with internal server error, return a failed 500 request',
        () async {
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(500, {'status': 0}),
        data: _signUpModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );
      final IApiResponse result = await dataSource.signUpUser(_signUpModel);

      expect(result, isA<FailedApiResponse>());
      expect(result.message, 'Error Processing Request ');
    });

    test('making a signup with conflict details, return a failed request',
        () async {
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(200, {'status': 0}),
        data: _signUpModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );
      final IApiResponse result = await dataSource.signUpUser(_signUpModel);

      expect(result, isA<FailedApiResponse>());
    });
  });

  group('SignIn', () {
    const String testPath = '/login';
    test('making a signin with a valid details, return a success request',
        () async {
      dioAdapter.onPost(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(201, {'status': 1}),
        data: _signInModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );
      final IApiResponse result = await dataSource.signInUser(_signInModel);

      expect(result, isA<SuccessApiResponse>());
    });

    test('making a signin with invalid details, return a failed 404 request',
        () async {
      const String message = 'Value not valid';
      dioAdapter.onPost(
        '$_baseUrl$testPath',
        (MockServer request) {
          final Map<String, Object> responseMap = {
            'status': 0,
            'message': message
          };
          return request.reply(404, responseMap);
        },
        data: _signInModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );
      final IApiResponse result = await dataSource.signInUser(_signInModel);

      expect(result, isA<FailedApiResponse>());
      expect(result.message, message);
    });

    test(
        'making a signin with internal server error, return a failed 500 request',
        () async {
      dioAdapter.onPost(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(500, {'status': 0}),
        data: _signInModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );
      final IApiResponse result = await dataSource.signInUser(_signInModel);

      expect(result, isA<FailedApiResponse>());
      expect(result.message, 'Error Processing Request ');
    });

    test('making a signin with conflict details, return a failed request',
        () async {
      dioAdapter.onPost(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(200, {'status': 0}),
        data: _signInModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );
      final IApiResponse result = await dataSource.signInUser(_signInModel);

      expect(result, isA<FailedApiResponse>());
    });
  });

  group('Reset password', () {
    test(
        'given a valid reset password model when a reset password action is taken, return a successs request',
        () async {
      const String testPath = '/reset-password';
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(201, <String, dynamic>{
          'status': 1,
        }),
        data: _resetPasswordModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );

      final IApiResponse result =
          await dataSource.resetPassword(_resetPasswordModel);

      expect(result, isA<SuccessApiResponse>());
    });

    test(
        'given a invalid reset password model when a reset password action is taken, return a failed request',
        () async {
      const String testPath = '/reset-password';
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(404, <String, dynamic>{
          'status': 0,
        }),
        data: _resetPasswordModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );

      final IApiResponse result =
          await dataSource.resetPassword(_resetPasswordModel);

      expect(result, isA<FailedApiResponse>());
    });

    test(
        'given a invalid reset password model when a reset password action is taken, return a failed request',
        () async {
      const String testPath = '/reset-password';
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(500, <String, dynamic>{
          'status': 0,
        }),
        data: _resetPasswordModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );

      final IApiResponse result =
          await dataSource.resetPassword(_resetPasswordModel);

      expect(result, isA<FailedApiResponse>());
    });
  });

  group('Verify Otp', () {
    const String testPath = '/verify-otp';

    test(
        'given a valid otp model when a verify otp action is taken, return a successs request',
        () async {
      when(() => secureStorage.read(key: 'token'))
          .thenAnswer((_) async => 'token');
      when(() => secureStorage.read(key: 'identifier'))
          .thenAnswer((_) async => 'identifier');
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(201, <String, dynamic>{
          'status': 1,
        }),
        data: await _verifyOtpModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );

      final IApiResponse result = await dataSource.verifyOtp(_verifyOtpModel);

      expect(result, isA<SuccessApiResponse>());
    });

    test(
        'given a invalid otp model when a verify otp action is taken, return a failed request',
        () async {
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(404, <String, dynamic>{
          'status': 0,
        }),
        data: await _verifyOtpModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );

      final IApiResponse result = await dataSource.verifyOtp(_verifyOtpModel);

      expect(result, isA<FailedApiResponse>());
    });

    test(
        'given a invalid otp model when a verify otp action is taken, return a failed request',
        () async {
      dioAdapter.onPut(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(500, <String, dynamic>{
          'status': 0,
        }),
        data: await _verifyOtpModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );

      final IApiResponse result = await dataSource.verifyOtp(_verifyOtpModel);

      expect(result, isA<FailedApiResponse>());
    });
  });

  group('Change Password', () {
    const String testPath = '/change-password';

    test(
        'given a valid change password model when a change password action is taken, return a successs request',
        () async {
      when(() => secureStorage.read(key: 'token'))
          .thenAnswer((_) async => 'token');
      when(() => secureStorage.read(key: 'identifier'))
          .thenAnswer((_) async => 'identifier');
      dioAdapter.onPost(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(201, <String, dynamic>{
          'status': 1,
        }),
        data: await _changePasswordModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );

      final IApiResponse result =
          await dataSource.changePassword(_changePasswordModel);

      expect(result, isA<SuccessApiResponse>());
    });

    test(
        'given a invalid change password model when a change password action is taken, return a failed request',
        () async {
      dioAdapter.onPost(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(404, <String, dynamic>{
          'status': 0,
        }),
        data: await _changePasswordModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );

      final IApiResponse result =
          await dataSource.changePassword(_changePasswordModel);

      expect(result, isA<FailedApiResponse>());
    });

    test(
        'given a invalid change password model when a change password action is taken, return a failed request',
        () async {
      dioAdapter.onPost(
        '$_baseUrl$testPath',
        (MockServer request) => request.reply(500, <String, dynamic>{
          'status': 0,
        }),
        data: await _changePasswordModel.toJson(),
        queryParameters: <String, dynamic>{},
        headers: <String, dynamic>{},
      );

      final IApiResponse result =
          await dataSource.changePassword(_changePasswordModel);

      expect(result, isA<FailedApiResponse>());
    });
  });
}

final ChangePasswordModel _changePasswordModel = ChangePasswordModel(
  '123456',
);

final VerifyOtpModel _verifyOtpModel = VerifyOtpModel(
  '1234',
);

const String _baseUrl = 'https://kwalu-selli.herokuapp.com/api/v1/auth';

String _password() => '12345678';

String _testValue() => 'test';

String _phoneNumber() => '76675598';

String _email() => 'test@test.com';

String _userId() => '1234567890123';

final CreateAccountModel _signUpModel = CreateAccountModel(
  firstName: _testValue(),
  lastName: _testValue(),
  email: _email(),
  nationalId: _userId(),
  phoneNumber: _phoneNumber(),
  password: _password(),
  location: _testValue(),
);

final LogInToAccountModel _signInModel =
    LogInToAccountModel(email: _email(), password: _password());

final ResetPasswordModel _resetPasswordModel = ResetPasswordModel(
  email: _email(),
);
