import '../../database/cache.dart';

abstract class IApiResponse {
  IApiResponse(this.status, this.data, this.message);
  final int status;
  final Map<String, dynamic>? data;
  final String message;
  Future<void> cacheResponse() async {
    final ICache cache = ResponseCache();
    await cache.set('response', data ?? <String, dynamic>{});
  }
}

class FailedApiResponse extends IApiResponse {
  FailedApiResponse(int status, Map<String, dynamic>? data, String message)
      : super(status, data, message);
  factory FailedApiResponse.fromJson(Map<String, dynamic> map) =>
      FailedApiResponse(
        map['status'] != null ? map['status'] as int : 0,
        map['data'] != null ? map['data'] as Map<String, dynamic>? : null,
        map['message'] != null ? map['message'] as String : '',
      );
}

class SuccessApiResponse extends IApiResponse {
  SuccessApiResponse(
    int status,
    Map<String, dynamic>? data,
  ) : super(status, data, 'Success');
  factory SuccessApiResponse.fromJson(Map<String, dynamic> map) =>
      SuccessApiResponse(
        map['status'] != null ? map['status'] as int : 0,
        map['data'] != null ? map['data'] as Map<String, dynamic>? : null,
      );
}
