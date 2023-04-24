class ToCommentVM {
  const ToCommentVM({
    required this.likedByMe,
    required this.likesAmount,
    required this.repliesAmount,
  });

  final bool likedByMe;
  final int likesAmount;
  final int repliesAmount;
}
