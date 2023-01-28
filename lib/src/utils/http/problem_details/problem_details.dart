import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'problem_details.g.dart';

part 'problem_details_defaults.dart';

@JsonSerializable(
  includeIfNull: false,
)
class ProblemDetails {
  factory ProblemDetails({
    String? type,
    int status = HttpStatus.internalServerError,
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
      type: type,
      status: status,
      title: title,
      detail: detail,
      instance: instance,
    );
  }

  const ProblemDetails._({
    this.type,
    this.status,
    this.title,
    this.detail,
    this.instance,
  });

  final String? type;
  final int? status;
  final String? title;
  final String? detail;
  final String? instance;

  factory ProblemDetails.fromJson(Map<String, Object?> json) =>
      _$ProblemDetailsFromJson(json);

  Map<String, Object?> toJson() => _$ProblemDetailsToJson(this);
}
