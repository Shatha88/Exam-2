import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 4),
        hintText: 'Search for Dishes, Restaurants and Reservations',
        hintStyle: const TextStyle(fontSize: 12),
        prefixIcon: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.deepPurple.shade900,
          ),
          onPressed: () {
            // Perform the search here
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(width: 1, color: Colors.grey.shade100),
        ),
      ),
    );
  }
}
