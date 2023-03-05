import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetUserRequestByID, JsonMap>)
class GetUserRequestByIDJsonConvert
    extends JsonConverter<GetUserRequestByID, JsonMap> {
  @override
  GetUserRequestByID fromJson(JsonMap json) {
    return GetUserRequestByID.fromJson(json);
  }

  @override
  JsonMap toJson(GetUserRequestByID object) {
    return object.toJson();
  }
}
