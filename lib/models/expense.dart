import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formattedDate=DateFormat.yMd();

const uuid=Uuid();
enum Category{food, creditcard, travel, work, learning}

const categoryIcon={
  Category.travel: Icons.flight_land_outlined,
  Category.work: Icons.work,
  Category.learning: Icons.menu_book,
  Category.food: Icons.lunch_dining,
  Category.creditcard: Icons.credit_card
};

class expense{
  expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.description,
    required this.category
}): id= uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String description;
  final Category category;

  String get formateDate{
    return formattedDate.format(date);
  }
}