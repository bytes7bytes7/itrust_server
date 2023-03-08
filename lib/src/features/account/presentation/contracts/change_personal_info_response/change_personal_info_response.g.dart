// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_personal_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePersonalInfoResponse _$ChangePersonalInfoResponseFromJson(
        Map<String, dynamic> json) =>
    ChangePersonalInfoResponse(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$ChangePersonalInfoResponseToJson(
    ChangePersonalInfoResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  return val;
}
