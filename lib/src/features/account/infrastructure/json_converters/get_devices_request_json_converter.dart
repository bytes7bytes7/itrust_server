import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetDevicesRequest, JsonMap>)
class GetDevicesRequestJsonConverter
    extends JsonConverter<GetDevicesRequest, JsonMap> {
  const GetDevicesRequestJsonConverter();

  @override
  GetDevicesRequest fromJson(JsonMap json) {
    return GetDevicesRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetDevicesRequest object) {
    return object.toJson();
  }
}
