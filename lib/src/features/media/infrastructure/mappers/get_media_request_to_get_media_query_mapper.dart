import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/queries/get_media/get_media.dart';
import '../../presentation/contracts/contracts.dart';

class GetMediaRequestToGetMediaQueryMapper
    extends TwoSourcesMapper<GetMediaRequest, UserID, GetMediaQuery> {
  GetMediaRequestToGetMediaQueryMapper(super.input);

  @override
  GetMediaQuery map() {
    return GetMediaQuery(
      userID: _userID,
      mediaID: MediaID.fromString(_request.mediaID),
    );
  }

  GetMediaRequest get _request => source1;

  UserID get _userID => source2;
}
