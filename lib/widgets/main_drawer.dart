import 'package:flutter/material.dart';
import 'package:meals/widgets/my_list_tile.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});
  final void Function(String identifier) onSelectScreen;
  void mealsItemTapped() {
    onSelectScreen('meals');
  }

  void filtersItemTapped() {
    onSelectScreen('filters');
  }

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
                  // Colors.red,
                ],
              ),
            ),
            child: Row(children: [
              Icon(
                Icons.fastfood,
                size: 48,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 18),
              Text(
                'Cooking up!',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ]),
          ),
          MyListTile(
            icon: Icons.restaurant,
            text: 'Meals',
            onItemTapped: mealsItemTapped,
          ),
          MyListTile(
            icon: Icons.settings,
            text: 'Filters',
            onItemTapped: filtersItemTapped,
          ),
        ],
      ),
    );
  }
}
