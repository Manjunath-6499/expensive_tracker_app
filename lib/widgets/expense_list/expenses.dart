import 'package:expensive_tracker_app/widgets/expense_list/expense_list.dart';
import "package:expensive_tracker_app/model/expense.dart";
import "package:expensive_tracker_app/widgets/expense_list/new_expense.dart";
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

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(
          seconds: 3,
        ),
        content: const Text(
          "Expense deleted",
        ),
        action: SnackBarAction(
          label: "undo",
          onPressed: () {
            setState(() {
              _registeredExpenses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text(
        "No Expenses found. Start add some!",
      ),
    );

    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expenses: _registeredExpenses,
        onRemoveExpense: _removeExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter expense tracker ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(
              Icons.add,
              color: Color.fromARGB(255, 193, 191, 191),
            ),
          )
        ],
        backgroundColor: const Color.fromARGB(255, 21, 7, 118),
      ),
      backgroundColor: const Color.fromARGB(255, 223, 222, 222),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "The Chart...",
          ),
          Expanded(
            child: mainContent,
          ),
        ],
      ),
    );
  }
}
