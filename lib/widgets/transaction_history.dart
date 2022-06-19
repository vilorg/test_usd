import 'package:flutter/material.dart';
import 'package:test_usd/constants.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(deffaultPadding),
      width: double.infinity,
      color: transactionColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Transaction History",
            style: TextStyle(
              color: textColor,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: deffaultPadding),
          Container(
            padding: const EdgeInsets.all(deffaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                deffaultPadding * 0.7,
              ),
              border: Border.all(
                color: secondaryColor,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "USD Dollar",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: textColor,
                ),
              ],
            ),
          ),
          const SizedBox(height: deffaultPadding),
          Row(
            children: [
              Flexible(
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.all(deffaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      deffaultPadding * 0.7,
                    ),
                    border: Border.all(
                      color: secondaryColor,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "USD Dollar",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: textColor,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: deffaultPadding),
              Container(
                width: 66,
                height: 66,
                padding: const EdgeInsets.symmetric(vertical: deffaultPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    deffaultPadding * 0.7,
                  ),
                  border: Border.all(
                    color: secondaryColor,
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.calendar_today_outlined,
                    color: textColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
