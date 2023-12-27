import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'dart:developer';

import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    inspect(meals);

    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) => MealItem(meal: meals[index]),
    );

    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(['😢', '😭', '😱', '😳'].elementAt(DateTime.now().second % 4),
                style: const TextStyle(fontSize: 48)),
            const SizedBox(
              height: 16,
            ),
            Text('No meals found',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    )),
            // TextStyle(fontSize: 24, color: Colors.grey)),
          ],
        ),
      );
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: content);
  }
}
