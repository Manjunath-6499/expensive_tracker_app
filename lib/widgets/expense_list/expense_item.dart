import "package:expensive_tracker_app/model/expense.dart";
import "package:flutter/material.dart";

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 189, 161, 245),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(
              expense.title,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  ('\$${expense.amount.toStringAsFixed(2)}'),
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(expense.formattedDate),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
