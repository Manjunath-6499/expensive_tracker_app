import 'package:expensive_tracker_app/widgets/expense_list/expenses.dart';
import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    home: const Expenses(), // todo: add main widget here....
  ));
}
