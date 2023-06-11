// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TryService extends StatelessWidget {
  const TryService({super.key});

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
                Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadiusDirectional.circular(4),
                          image: const DecorationImage(
                              opacity: 0.3,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://marketplace.canva.com/EAFLm5UXryk/1/0/1600w/canva-delicious-food-menu-banner-design-Q3ZpbYRCgZc.jpg'))),
                    ),
                    const Positioned(
                        bottom: 2,
                        left: 120 / 8,
                        child: Text(
                          'Gift Service',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w900),
                        ))
                  ],
                ),
              ],
            )
        ],
      ),
    );
  }
}
