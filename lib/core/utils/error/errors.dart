class KwaluSelliValueError extends Error {
  KwaluSelliValueError(this.errorMessage);

  final String errorMessage;

  @override
  String toString() => Error.safeToString(errorMessage);
}

class KwaluSelliTypeError extends Error {
  KwaluSelliTypeError(
    this.errorMessage,
    this.type,
  );

  final String errorMessage;
  final String type;

  String get errorType => type;

  @override
  String toString() => Error.safeToString(errorMessage);
}
