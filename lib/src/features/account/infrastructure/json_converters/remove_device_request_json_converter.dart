import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<RemoveDeviceRequest, JsonMap>)
class RemoveDeviceRequestJsonConverter
    extends JsonConverter<RemoveDeviceRequest, JsonMap> {
  const RemoveDeviceRequestJsonConverter();

  @override
  RemoveDeviceRequest fromJson(JsonMap json) {
    return RemoveDeviceRequest.fromJson(json);
  }

  @override
  JsonMap toJson(RemoveDeviceRequest object) {
    return object.toJson();
  }
}
