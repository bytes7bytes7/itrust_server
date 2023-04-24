class OnlineStatus {
  const OnlineStatus({
    required this.isOnline,
    required this.lastSeenAtMSSinceEpoch,
  });

  const OnlineStatus.empty()
      : isOnline = false,
        lastSeenAtMSSinceEpoch = 0;

  final bool isOnline;
  final int? lastSeenAtMSSinceEpoch;
}
