import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 28,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.deepPurple.shade900,
                  borderRadius: BorderRadius.circular(18)),
              child: const Text(
                'Delivery',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 28,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.deepPurple.shade900,
                  borderRadius: BorderRadius.circular(18)),
              child: const Text(
                'Pickup',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            onTap: () {},
          ),
        ),
      ]),
      Row(children: [
        InkWell(
          child: Container(
            height: 60,
            width: 110,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Column(children: [
                    Icon(
                      Icons.bike_scooter,
                      size: 24,
                    ),
                  ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Deliver to',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600)),
                        Row(children: [
                          const Text('Home',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600)),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            size: 18,
                            color: Colors.amber.shade800,
                          ),
                        ]),
                      ]),
                ]),
          ),
          onTap: () {},
        ),
      ]),
    ]);
  }
}
