import 'package:mapster/mapster.dart';

import '../../application/view_models/media_vm/media_vm.dart';
import '../../domain/domain.dart';

class MediaToMediaVMMapper extends OneSourceMapper<Media, MediaVM> {
  MediaToMediaVMMapper(super.input);

  @override
  MediaVM map() {
    return MediaVM(
      id: _media.id,
      type: _media.type,
    );
  }

  Media get _media => source;
}
