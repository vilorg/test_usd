// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:test_usd/models/transaction_model.dart';

class DayTranactionModel {
  final String title;
  final List<TransactionModel> list;

  DayTranactionModel({
    required this.title,
    required this.list,
  });

  DayTranactionModel copyWith({
    String? title,
    List<TransactionModel>? list,
  }) {
    return DayTranactionModel(
      title: title ?? this.title,
      list: list ?? this.list,
    );
  }

  @override
  String toString() => 'DayTranactionModel(title: $title, list: $list)';

  static List<DayTranactionModel> getDeffaultDayTransactionModel() => [
        DayTranactionModel(
          title: "Yesterday",
          list: TransactionModel.getDeffaultTransactionModelList(),
        ),
        DayTranactionModel(
          title: "Sat, Dec 11",
          list: TransactionModel.getDeffaultTransactionModelList(),
        ),
        DayTranactionModel(
          title: "Thurs, Dec 9",
          list: TransactionModel.getDeffaultTransactionModelList(),
        ),
      ];
}
