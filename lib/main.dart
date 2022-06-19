import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_usd/models/day_transaction_model.dart';
import 'package:test_usd/widgets/day_view.dart';
import 'package:test_usd/widgets/header.dart';
import 'package:test_usd/widgets/transaction_history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      title: 'Test USD applocation',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(elevation: 0, color: Colors.black)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DayTranactionModel> data =
        DayTranactionModel.getDeffaultDayTransactionModel();

    List<Widget> listDayTransaction = [];

    for (DayTranactionModel dayTranactionModel in data) {
      listDayTransaction.add(DayView(model: dayTranactionModel));
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.keyboard_backspace, size: 30),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.open_in_new_rounded, size: 30),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Header(),
            const TransactionHistory(),
            ...listDayTransaction,
          ],
        ),
      ),
    );
  }
}
