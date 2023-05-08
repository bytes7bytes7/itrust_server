import '../view_models/media_vm/media_vm.dart';

class ToMessageVM {
  const ToMessageVM({
    required this.isReadByMe,
    required this.media,
  });

  final bool isReadByMe;
  final List<MediaVM> media;
}
