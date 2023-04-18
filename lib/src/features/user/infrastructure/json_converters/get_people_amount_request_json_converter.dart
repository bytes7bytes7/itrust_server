import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/typedef.dart';
import '../../presentation/contracts/get_people_amount_request/get_people_amount_request.dart';

@Singleton(as: JsonConverter<GetPeopleAmountRequest, JsonMap>)
class GetPeopleAmountRequestJsonConverter
    extends JsonConverter<GetPeopleAmountRequest, JsonMap> {
  const GetPeopleAmountRequestJsonConverter();

  @override
  GetPeopleAmountRequest fromJson(JsonMap json) {
    return GetPeopleAmountRequest.fromJson(json);
  }

  @override
  JsonMap toJson(GetPeopleAmountRequest object) {
    return object.toJson();
  }
}
