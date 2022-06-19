// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:test_usd/constants.dart';

import 'package:test_usd/models/day_transaction_model.dart';
import 'package:test_usd/models/transaction_model.dart';
import 'package:test_usd/widgets/transaction_tile.dart';

class DayView extends StatelessWidget {
  const DayView({
    Key? key,
    required this.model,
  }) : super(key: key);

  final DayTranactionModel model;

  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];

    for (TransactionModel item in model.list) {
      data.add(TransactionTile(model: item));
    }

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          color: secondaryColor,
          padding: const EdgeInsets.symmetric(
              vertical: deffaultPadding / 2, horizontal: deffaultPadding),
          child: Text(
            model.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ...data,
      ],
    );
  }
}
