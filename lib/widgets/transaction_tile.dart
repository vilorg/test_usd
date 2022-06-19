// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:test_usd/constants.dart';

import 'package:test_usd/models/transaction_model.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    Key? key,
    required this.model,
  }) : super(key: key);

  final TransactionModel model;

  @override
  Widget build(BuildContext context) {
    double width =
        (MediaQuery.of(context).size.width - 2 * deffaultPadding) / 3;

    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: secondaryColor, width: 0.5)),
        color: whiteColor,
      ),
      padding: const EdgeInsets.all(deffaultPadding),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: secondaryColor)),
              child: Image.asset(model.avatar),
            ),
          ),
          const SizedBox(width: deffaultPadding / 2),
          SizedBox(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title,
                  style: const TextStyle(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: deffaultPadding / 2),
                Text(
                  model.time,
                  style: const TextStyle(
                    color: secondaryColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            model.value,
            style: const TextStyle(
                color: blackColor, fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
