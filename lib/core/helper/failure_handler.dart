enum FailureType {
  unexpected,
}

class Failure {
  final FailureType type;
  final String message;

  Failure(
    this.message, {
    this.type = FailureType.unexpected,
  });

  factory Failure.network(String? msg, FailureType type) => Failure(
        'Network  error: ${msg ?? ''}',
        type: type,
      );

  factory Failure.unexpected(String? msg) => Failure(
        'Unexpected: ${msg ?? ''}',
        type: FailureType.unexpected,
      );
}
