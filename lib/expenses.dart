import "package:flutter/material.dart";

class Expenses extends StatefulWidget {
  const Expenses({super.key, required});

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
        leading: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
