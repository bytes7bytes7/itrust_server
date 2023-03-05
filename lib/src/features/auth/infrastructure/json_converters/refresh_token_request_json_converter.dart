import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<RefreshTokenRequest, JsonMap>)
class RefreshTokenRequestJsonConverter
    extends JsonConverter<RefreshTokenResponse, JsonMap> {
  @override
  RefreshTokenResponse fromJson(JsonMap json) {
    return RefreshTokenResponse.fromJson(json);
  }

  @override
  JsonMap toJson(RefreshTokenResponse object) {
    return object.toJson();
  }
}
