import 'package:dartz/dartz.dart';

import '../failure/server_response.dart';

extension TaskX<T extends Either<Object, U>, U> on Task<T> {
  Task<Either<ServerResponse, U>> mapLeftToFailure() => map(
        (T either) => either.leftMap(ServerResponse.getDioException),
      );
}
