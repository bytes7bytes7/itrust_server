import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_feed_request.g.dart';

@JsonSerializable()
class GetFeedRequest {
  const GetFeedRequest({
    this.lastPostID,
  });

  final String? lastPostID;

  factory GetFeedRequest.fromJson(JsonMap json) =>
      _$GetFeedRequestFromJson(json);

  JsonMap toJson() => _$GetFeedRequestToJson(this);
}
