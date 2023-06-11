// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FilterCategory extends StatelessWidget {
  const FilterCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 12,
        runSpacing: 12,
        children: [
          for (int i = 0; i < 5; i++)
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://marketplace.canva.com/EAEzOw_ovvE/1/0/1600w/canva-watercolor-food-logo-0GcpZ9_7Xls.jpg'))),
                  child: const Text(
                    'Delivery',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
