import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final Function(String route) onSelectScreen;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.restaurant_menu,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'Cooking Up!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text('Meals',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 24,
                    )),
            onTap: () {
              onSelectScreen('meals');
              // Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text('Filters',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 24,
                    )),
            onTap: () {
              onSelectScreen('filters');
              // Navigator.of(context).pushReplacementNamed('/settings');
            },
          ),
        ],
      ),
    );
  }
}
