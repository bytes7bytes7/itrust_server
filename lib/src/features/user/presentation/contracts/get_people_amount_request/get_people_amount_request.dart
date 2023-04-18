import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_people_amount_request.g.dart';

@JsonSerializable()
class GetPeopleAmountRequest {
  const GetPeopleAmountRequest();

  factory GetPeopleAmountRequest.fromJson(JsonMap json) =>
      _$GetPeopleAmountRequestFromJson(json);

  JsonMap toJson() => _$GetPeopleAmountRequestToJson(this);
}
