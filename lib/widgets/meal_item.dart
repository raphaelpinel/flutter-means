import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    super.key,
    required this.meal,
  });

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Image.network(meal.imageUrl), // Add the image here
        title: Text(meal.title),
      ),
    );
  }
}
