class PeopleAmountResult {
  const PeopleAmountResult({
    required this.allUsersAmount,
    required this.friendsAmount,
    required this.subscribersAmount,
    required this.subscriptionsAmount,
  });

  final int allUsersAmount;
  final int friendsAmount;
  final int subscribersAmount;
  final int subscriptionsAmount;
}
