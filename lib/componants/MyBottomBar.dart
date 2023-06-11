// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Skip',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          //here we can use dot indecator
          Icon(
            Icons.arrow_forward,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
