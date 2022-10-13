import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_response.freezed.dart';

@freezed
class ServerResponse with _$ServerResponse {
  const factory ServerResponse.unexpected() = _Unexpected;
  const factory ServerResponse.permissionDenied() = _permissonDenied;
  const factory ServerResponse.unableToUpdate() = _unableToUpdate;
  const factory ServerResponse.requestCancelled() = RequestCancelled;
  const factory ServerResponse.unauthorisedRequest() = UnauthorisedRequest;
  const factory ServerResponse.badRequest() = BadRequest;
  const factory ServerResponse.notFound(String reason) = NotFound;
  const factory ServerResponse.methodNotAllowed() = MethodNotAllowed;
  const factory ServerResponse.notAcceptable() = NotAcceptable;
  const factory ServerResponse.requestTimeout() = RequestTimeout;
  const factory ServerResponse.sendTimeout() = SendTimeout;
  const factory ServerResponse.conflict() = Conflict;
  const factory ServerResponse.internalServerError() = InternalServerError;
  const factory ServerResponse.notImplemented() = NotImplemented;
  const factory ServerResponse.serviceUnavailable() = ServiceUnavailable;
  const factory ServerResponse.noInternetConnection() = NoInternetConnection;
  const factory ServerResponse.formatException() = FormatException;
  const factory ServerResponse.unableToProcess() = UnableToProcess;
  const factory ServerResponse.defaultError(String error) = DefaultError;
  const factory ServerResponse.unexpectedError() = UnexpectedError;

  // ignore: prefer_constructors_over_static_methods, avoid_annotating_with_dynamic
  static ServerResponse getDioException(dynamic error) {
    if (error is Exception) {
      try {
        ServerResponse serverResponse = const ServerResponse.unexpectedError();
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.connectTimeout:
              serverResponse = const ServerResponse.requestTimeout();
              break;
            case DioErrorType.sendTimeout:
              serverResponse = const ServerResponse.sendTimeout();
              break;
            case DioErrorType.receiveTimeout:
              serverResponse = const ServerResponse.requestTimeout();
              break;
            case DioErrorType.response:
              switch (error.response!.statusCode) {
                case 400:
                  serverResponse = const ServerResponse.badRequest();
                  break;
                case 401:
                  serverResponse = const ServerResponse.unauthorisedRequest();
                  break;
                case 403:
                  serverResponse = const ServerResponse.notAcceptable();
                  break;
                case 404:
                  serverResponse = const ServerResponse.notFound('Not Found');
                  break;
                case 408:
                  serverResponse = const ServerResponse.requestTimeout();
                  break;
                case 409:
                  serverResponse = const ServerResponse.conflict();
                  break;
                case 500:
                  serverResponse = const ServerResponse.internalServerError();
                  break;
                case 503:
                  serverResponse = const ServerResponse.serviceUnavailable();
                  break;
                default:
                  serverResponse = const ServerResponse.defaultError(
                    'Received invalid status code:',
                  );
                  break;
              }
              break;
            case DioErrorType.cancel:
              serverResponse = const ServerResponse.requestCancelled();
              break;
            case DioErrorType.other:
              serverResponse = const ServerResponse.noInternetConnection();
              break;
          }
        } else if (error is SocketException) {
          serverResponse = const ServerResponse.noInternetConnection();
        } else {
          serverResponse = const ServerResponse.unexpectedError();
        }
        return serverResponse;
      } on FormatException {
        return const ServerResponse.formatException();
        // ignore: avoid_catches_without_on_clauses
      } catch (_) {
        return const ServerResponse.unexpected();
      }
    } else {
      if (error.toString().contains('is not a subtype of')) {
        return const ServerResponse.unableToProcess();
      } else {
        return const ServerResponse.unexpectedError();
      }
    }
  }
}

String serverResponseToString(
  ServerResponse l,
) =>
    l.map(
      unexpected: (_) => 'Error Processing Request',
      permissionDenied: (_) => 'Permission Denied',
      unableToUpdate: (_) => 'Error Processing Request',
      requestCancelled: (_) => 'Error Processing Request ',
      unauthorisedRequest: (_) => 'Unauthorized Request ',
      badRequest: (_) => 'Error Processing Request ',
      notFound: (NotFound notFound) {
        return notFound.reason;
      },
      methodNotAllowed: (_) => 'Error Processing Request ',
      notAcceptable: (_) => 'Error Processing Request ',
      requestTimeout: (_) => 'Error Processing Request ',
      sendTimeout: (_) => 'Connection Time Out ',
      conflict: (_) => 'Connection Time Out ',
      internalServerError: (_) => 'Error Processing Request ',
      notImplemented: (_) => 'Error ',
      serviceUnavailable: (_) => 'Service Unavailable ',
      noInternetConnection: (_) => 'No Internet Connection ',
      formatException: (_) => 'Input format error ',
      unableToProcess: (_) => 'Unable to process ',
      defaultError: (_) => 'Error ',
      unexpectedError: (_) => 'Unexpected error ',
    );
