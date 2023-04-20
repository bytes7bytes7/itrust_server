import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/typedef.dart';

part 'chat_vm.freezed.dart';

part 'chat_vm.g.dart';

@freezed
class ChatVM with _$ChatVM {
  const factory ChatVM() = _ChatVM;

  factory ChatVM.fromJson(JsonMap json) => _$ChatVMFromJson(json);
}
