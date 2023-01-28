import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'problem_details.g.dart';

part 'problem_details_defaults.dart';

@JsonSerializable(
  includeIfNull: false,
)
class ProblemDetails {
  factory ProblemDetails({
    int status = HttpStatus.internalServerError,
    String? type,
    String? title,
    String? detail,
    String? instance,
  }) {
    final errorData = _problemDetailsDefaults[status];

    if (errorData != null) {
      title = errorData.title;
      type = errorData.link;
    }

    return ProblemDetails._(
      status: status,
      type: type,
      title: title,
      detail: detail,
      instance: instance,
    );
  }

  const ProblemDetails._({
    required this.status,
    this.type,
    this.title,
    this.detail,
    this.instance,
  });

  final int status;
  final String? type;
  final String? title;
  final String? detail;
  final String? instance;

  factory ProblemDetails.fromJson(Map<String, Object?> json) =>
      _$ProblemDetailsFromJson(json);

  Map<String, Object?> toJson() => _$ProblemDetailsToJson(this);
}
