import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/contracts.dart';

class MediaResultToMediaResponseMapper
    extends OneSourceMapper<MediaResult, MediaResponse> {
  MediaResultToMediaResponseMapper(super.input);

  @override
  MediaResponse map() {
    return MediaResponse(
      encodedBytes: _result.encodedBytes,
    );
  }

  MediaResult get _result => source;
}
