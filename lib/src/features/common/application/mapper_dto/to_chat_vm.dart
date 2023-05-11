import '../../domain/domain.dart';
import '../view_models/media_vm/media_vm.dart';

class ToChatVM {
  const ToChatVM({
    this.unreadAmount = 0,
    this.media,
    this.lastMessageID,
    this.participantsAmount = 0,
    this.partnerID,
  });

  final int unreadAmount;
  final MediaVM? media;
  final MessageID? lastMessageID;
  final int participantsAmount;
  final UserID? partnerID;
}
