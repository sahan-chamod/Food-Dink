import 'package:flutter/material.dart';

class UserHomeController extends ChangeNotifier {
  // Example data for categories and partners
  final List<Map<String, dynamic>> categories = [
    {'icon': Icons.fastfood, 'label': 'Sandwiches'},
    {'icon': Icons.local_pizza, 'label': 'Pizza'},
    {'icon': Icons.lunch_dining, 'label': 'Burgers'},
    {'icon': Icons.emoji_food_beverage, 'label': 'Coffee'},
    {'icon': Icons.ramen_dining, 'label': 'Ramen'},
  ];

  final List<Map<String, String>> partners = [
    {'imagePath': 'assets/subway.png', 'name': 'Subway'},
    {'imagePath': 'assets/taco_bell.png', 'name': 'Taco Bell'},
    {'imagePath': 'assets/mcdonalds.png', 'name': 'McDonald\'s'},
    {'imagePath': 'assets/starbucks.png', 'name': 'Starbucks'},
  ];

 
  void refreshData() {
    
    notifyListeners(); 
  }
}
