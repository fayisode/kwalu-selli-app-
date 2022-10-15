import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../error/api_error_response.dart';
import '../failure/server_response.dart';

extension TaskX<T extends Either<Object, U>, U> on Task<T> {
  Task<IApiResponse> mapResponseToApiResponse() => map(
        (T either) => either.fold(
          (Object l) {
            final String errorMessage =
                _getErrorMessageFromResponse(l as DioError);
            return FailedApiResponse(
              0,
              null,
              errorMessage,
            );
          },
          (dynamic r) => r['status'] == 1
              ? SuccessApiResponse.fromJson(r as Map<String, dynamic>)
              : FailedApiResponse.fromJson(r as Map<String, dynamic>),
        ),
      );

  String _getErrorMessageFromResponse(DioError l) {
    String errorMessage = '';
    try {
      errorMessage = l.response!.data['message'] as String;
    } catch (e) {
      errorMessage = serverResponseToString(
        ServerResponse.getDioException(l),
      );
    }
    return errorMessage;
  }
}
