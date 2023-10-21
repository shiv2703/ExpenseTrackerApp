import 'package:expense_tracker/widgets/expenses_list/expense_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class expensesApp extends StatefulWidget {
  const expensesApp({super.key});

  @override
  State<expensesApp> createState() => _expensesAppState();
}

class _expensesAppState extends State<expensesApp> {
  final List<expense> _registeredExpense = [
    expense(
      title: 'Flutter Course',
      amount: 370.0,
      date: DateTime.now(),
      description: 'For Learning New skill',
      category: Category.learning,
    ),
    expense(
        title: 'Kasol Trip',
        amount: 3000,
        date: DateTime.now(),
        description: 'Week Trip to Kasol with friends',
        category: Category.travel),
  ];

  void _openAddExpense() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(
        onADDExpenses: _addExpense,
      ),
    );
  }

  void _addExpense(expense NewExpense) {
    setState(() {
      _registeredExpense.add(NewExpense);
    });
  }

  void _removeExpense(expense RemovableExpense) {
    setState(() {
      _registeredExpense.remove(RemovableExpense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        foregroundColor: Colors.white,
        title: const Text(
          'Expense Tracker App',
        ),
        actions: [
          IconButton(
            onPressed: _openAddExpense,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('Chart'),
          Expanded(
              child: ExpenseList(
            expenses: _registeredExpense,
            removableExpenses: _removeExpense,
          ))
        ],
      ),
    );
  }
}
