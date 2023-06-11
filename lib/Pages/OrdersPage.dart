import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Orders',
                ),
                Tab(
                  text: 'Reservations',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.badge_sharp),
                  Text('There are no past orders')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.badge_sharp),
                  Text('There are no past reservations')
                ],
              ),
            ],
          ),
        ));
  }
}
