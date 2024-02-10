import "package:expensive_tracker_app/model/expense.dart";
import "package:flutter/material.dart";
import "package:expensive_tracker_app/widgets/expense_list/expense_item.dart";

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpenseItem(
        expenses[index],
      ),
    );
  }
}
