import 'package:expensive_tracker_app/widgets/expense_list/expense_list.dart';
import "package:expensive_tracker_app/model/expense.dart";
import "package:flutter/material.dart";

class Expenses extends StatefulWidget {
  const Expenses({
    super.key,
  });

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
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
        category: Category.leisure),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Flutter expense tracker",
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add))
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 89, 134, 232),
      ),
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "The Chart...",
          ),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
