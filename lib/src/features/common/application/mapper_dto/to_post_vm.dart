import '../view_models/media_vm/media_vm.dart';

class ToPostVM {
  const ToPostVM({
    required this.media,
    required this.likedByMe,
    required this.likesAmount,
    required this.commentsAmount,
  });

  final List<MediaVM> media;
  final bool likedByMe;
  final int likesAmount;
  final int commentsAmount;
}
