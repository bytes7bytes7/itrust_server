import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';
import '../../../domain/domain.dart';

part 'media_vm.freezed.dart';

part 'media_vm.g.dart';

@freezed
class MediaVM with _$MediaVM {
  const factory MediaVM({
    required MediaID id,
    required MediaType type,
  }) = _MediaVM;

  factory MediaVM.fromJson(JsonMap json) => _$MediaVMFromJson(json);
}
