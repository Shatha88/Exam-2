// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ChefzCard extends StatelessWidget {
  const ChefzCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.9,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            image: const DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFygdTJCu4nYW64A6DRt7EEhhu-haF4Oq-tQ&usqp=CAU'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 16,
          top: 14,
          child: Container(
            width: 80,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.blue.shade900,
                  Colors.blue.shade600,
                ],
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(children: [
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.white,
                ),
                Text(
                  'Promotion',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ]),
            ),
          ),
        ),
        const Positioned(
            top: 16,
            right: 16,
            child: Icon(
              Icons.favorite_border_rounded,
              color: Colors.white,
            )),
        Positioned(
          bottom: BorderSide.strokeAlignCenter,
          child: Container(
            height: 60,
            width: MediaQuery.sizeOf(context).width * 0.9,
            color: Colors.white,
          ),
        ),
        Positioned(
          bottom: 4,
          left: 4,
          child: Row(
            children: [
              const CircleAvatar(
                  radius: 26,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-vector/food-logo-design_139869-254.jpg?w=2000')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Food Company',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.pin_drop,
                            size: 18,
                          ),
                          Text('4.50 km'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            size: 18,
                            color: Colors.purple.shade200,
                          ),
                          const Text('4.9 (79)'),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
