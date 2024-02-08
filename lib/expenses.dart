import "package:expensive_tracker_app/model/expense.dart";
import "package:flutter/material.dart";

class Expenses extends StatefulWidget {
  Expenses({super.key, required});

  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Flutter Course",
      amount: 599.9,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
        title: "Cinema",
        amount: 250.6,
        date: DateTime.now(),
        category: Category.leisure)
  ];

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 2, 76),
        title: const Text(
          "Flutter Expense Tracker",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
