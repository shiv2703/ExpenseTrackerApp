import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.Expenses,{super.key});
final expense Expenses;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
        child: Column(
          children: [
            Text(Expenses.title),
            const SizedBox(height: 20,),
            Row(
              children: [
                Text('₹${Expenses.amount.toStringAsFixed(2)}'),
                const Spacer(),

                 Row(
                   children: [
                      Icon(categoryIcon[Expenses.category]),
                     Text(Expenses.formateDate),
                   ],
                 ),
              ],
            ),
            const SizedBox(height: 20,),
            Text(Expenses.description),
          ],
        ),
      ),
    );
  }
}
