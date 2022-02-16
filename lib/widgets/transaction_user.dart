import 'package:flutter/material.dart';

import './transaction_list.dart';
import './transaction_form.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final List<Transaction> _transactions = [
    Transaction(
        id: 1, title: 'Sangue de Cobra', value: 7.5, date: DateTime.now()),
    Transaction(id: 2, title: 'Provolone', value: 9, date: DateTime.now()),
  ];

  void _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: _transactions.length + 1,
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(onSubmit: _addTransaction),
        TransactionList(transactions: _transactions),
      ],
    );
  }
}
