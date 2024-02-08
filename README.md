# expensive_tracker_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
  This a new readme line

  1. first i create main function
  2. created a new file in the lib folder call expenses.dart
  3. In that i started to create basic stateless Ui which i need to show in the display 
  4. Now, i need data structure to create expense tracker app
  5. So, i created  model folder -> lib , in that model -> expense.dart file
  6. expense.dart -> i created a class in name of expense
  7. In that class, i need some properties like title, id, date, amount..etc.,
  8. So, i created required parameters
  9. instead of creating id property , we import package called "flutter Uuid".
  10. I stored Uuid id package in new variable called uuid.
  11. After that , instead of catergory , we imported "enum" it is automated catergory . we created categories like food, travel, work, and leisure. (enum Category = {food, travel, work, leisure})
  12. Now, i import this properties in expenses.dart file 
  13. In that , constructor function i created one list<Expense> _getRegisteredeExpenses = [
    in this list i imported Expense class 
  ];
  14. The above list is just dummy data
  



