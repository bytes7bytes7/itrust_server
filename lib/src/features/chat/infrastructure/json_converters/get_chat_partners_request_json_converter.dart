import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/contracts.dart';

@Singleton(as: JsonConverter<GetChatPartnersRequest, JsonMap>)
class GetChatPartnersRequestJsonConverter
    extends JsonConverter<GetChatPartnersRequest, JsonMap> {
  const GetChatPartnersRequestJsonConverter();

  @override
  GetChatPartnersRequest fromJson(JsonMap json) {
    return GetChatPartnersRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetChatPartnersRequest object) {
    return object.toJson();
  }
}
