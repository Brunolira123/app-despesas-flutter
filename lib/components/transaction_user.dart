import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      amount: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      amount: 500.00,
      date: DateTime.now(),
    )
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: Random().nextDouble().toString(),
        title: title,
        amount: value,
        date: DateTime.now());

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
