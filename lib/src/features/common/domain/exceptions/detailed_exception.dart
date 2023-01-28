enum DetailedExceptionType {
  failure,
  unexpected,
  validation,
  conflict,
  notFound,
}

class DetailedException implements Exception {
  const DetailedException({
    required this.type,
    required this.code,
    required this.description,
  });

  const DetailedException.failure({
    required this.code,
    required this.description,
  }) : type = DetailedExceptionType.failure;

  const DetailedException.unexpected({
    required this.code,
    required this.description,
  }) : type = DetailedExceptionType.unexpected;

  const DetailedException.validation({
    required this.code,
    required this.description,
  }) : type = DetailedExceptionType.validation;

  const DetailedException.conflict({
    required this.code,
    required this.description,
  }) : type = DetailedExceptionType.conflict;

  const DetailedException.notFound({
    required this.code,
    required this.description,
  }) : type = DetailedExceptionType.notFound;

  final DetailedExceptionType type;
  final String code;
  final String description;
}
