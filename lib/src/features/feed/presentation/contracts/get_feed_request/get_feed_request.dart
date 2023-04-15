import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'get_feed_request.g.dart';

@JsonSerializable()
class GetFeedRequest {
  const GetFeedRequest({
    required this.tag,
    this.lastPostID,
  });

  final String? tag;
  final String? lastPostID;

  factory GetFeedRequest.fromJson(JsonMap json) =>
      _$GetFeedRequestFromJson(json);

  JsonMap toJson() => _$GetFeedRequestToJson(this);
}
