import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

const int _defaultConnectTimeout = Duration.millisecondsPerMinute;
const int _defaultReceiveTimeout = Duration.millisecondsPerMinute;

abstract class BaseDioClient {
  ///GET:: request
  Future<dynamic> get(
    String uri, {
    required Map<String, dynamic> queryParameters,
    required Options options,
    required ProgressCallback onReceiveProgress,
  });

  ///POST::request
  Future<dynamic> post<T>(
    String uri, {
    required T data,
    required Map<String, dynamic> queryParameters,
    required Options options,
    required CancelToken cancelToken,
    required ProgressCallback onSendProgress,
    required ProgressCallback onReceiveProgress,
  });

  ///PATCH::request
  Future<dynamic> patch<T>(
    String uri, {
    required T data,
    required Map<String, dynamic> queryParameters,
    required Options options,
    required CancelToken cancelToken,
    required ProgressCallback onSendProgress,
    required ProgressCallback onReceiveProgress,
  });

  ///PUT::request
  Future<dynamic> put<T>(
    String uri, {
    required T data,
    required Map<String, dynamic> queryParameters,
    required Options options,
    required CancelToken cancelToken,
    required ProgressCallback onSendProgress,
    required ProgressCallback onReceiveProgress,
  });
}

class DioClient implements BaseDioClient {
  DioClient(
    this.baseUrl,
    Dio? dio, {
    required this.interceptors,
  }) {
    const String username = '6305f6d4531aa';
    const String password = '6305f6ea19c70009194509';
    final String auth =
        'Basic ${base64Encode(utf8.encode('$username:$password'))}';
    _dio = dio ?? Dio();
    _dio
      ..options.connectTimeout = _defaultConnectTimeout
      ..options.receiveTimeout = _defaultReceiveTimeout
      ..options.headers = <String, String>{
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=UTF-8',
        'authorization': auth,
      };
    if (interceptors.isNotEmpty) {
      _dio.interceptors.addAll(interceptors);
    }
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestHeader: false,
          responseHeader: false,
          request: false,
        ),
      );
    }
  }

  ///Base url
  final String baseUrl;

  Dio _dio = Dio();

  ///Interceptor
  final List<Interceptor> interceptors;

  @override
  Future<dynamic> get(
    String uri, {
    required Map<String, dynamic> queryParameters,
    required Options options,
    required ProgressCallback onReceiveProgress,
  }) async {
    debugPrint('Get used');

    try {
      final Response<dynamic> response = await _dio.get<dynamic>(
        baseUrl + uri,
        queryParameters: queryParameters,
        options: options,
        onReceiveProgress: onReceiveProgress,
      );

      return response.data!;
    } on SocketException catch (e) {
      debugPrint('socket exception');

      throw SocketException(e.toString());
    } on FormatException catch (_) {
      debugPrint('Format exception');

      throw const FormatException('Unable to process the data');
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      debugPrint('rethrow exception');

      rethrow;
    }
  }

  @override
  Future<dynamic> post<T>(
    String uri, {
    required T data,
    required Map<String, dynamic> queryParameters,
    required Options options,
    required CancelToken cancelToken,
    required ProgressCallback onSendProgress,
    required ProgressCallback onReceiveProgress,
  }) async {
    try {
      final Response<Map<String, dynamic>> response = await _dio.post(
        baseUrl + uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data!;
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> put<T>(
    String uri, {
    required T data,
    required Map<String, dynamic> queryParameters,
    required Options options,
    required CancelToken cancelToken,
    required ProgressCallback onSendProgress,
    required ProgressCallback onReceiveProgress,
  }) async {
    try {
      final Response<Map<String, dynamic>> response = await _dio.put(
        baseUrl + uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data!;
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> patch<T>(
    String uri, {
    required T data,
    required Map<String, dynamic> queryParameters,
    required Options options,
    required CancelToken cancelToken,
    required ProgressCallback onSendProgress,
    required ProgressCallback onReceiveProgress,
  }) async {
    try {
      final Response<Map<String, dynamic>> response = await _dio.patch(
        baseUrl + uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data!;
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      rethrow;
    }
  }
}
