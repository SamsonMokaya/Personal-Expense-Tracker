import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Weekly Groceries',
      amount: 16.3,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Weekly Groceries',
      amount: 16.3,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Weekly Groceries',
      amount: 16.3,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Weekly Groceries',
      amount: 16.3,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Water',
      amount: 20.8,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Billie Jean',
      amount: 50.00,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String Title, String Amount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: Title,
      amount: double.parse(Amount),
      date: DateTime.now(),
    );
    setState(() {
      transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      TransactionList(transactions),
    ]);
  }
}
