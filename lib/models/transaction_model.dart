class TransactionModel {
  final String title;
  final String avatar;
  final String value;
  final String time;
  TransactionModel({
    required this.title,
    required this.avatar,
    required this.value,
    required this.time,
  });

  TransactionModel copyWith({
    String? title,
    String? avatar,
    String? value,
    String? dateTime,
  }) {
    return TransactionModel(
      title: title ?? this.title,
      avatar: avatar ?? this.avatar,
      value: value ?? this.value,
      time: dateTime ?? this.time,
    );
  }

  @override
  String toString() {
    return 'TransactionModel(title: $title, avatar: $avatar, value: $value, dateTime: $time)';
  }

  static List<TransactionModel> getDeffaultTransactionModelList() => [
        TransactionModel(
          title: "McDonalds",
          avatar: "assets/images/mac.png",
          value: r"- $55.31 USD",
          time: "12:23",
        ),
        TransactionModel(
          title: "McDonalds",
          avatar: "assets/images/nike.png",
          value: r"- $500.31 USD",
          time: "12:23",
        ),
        TransactionModel(
          title: "McDonalds",
          avatar: "assets/images/starbucks.png",
          value: r"- $55.31 USD",
          time: "12:23",
        ),
      ];
}
