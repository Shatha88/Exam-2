import 'package:exam/componants/Header.dart';
import 'package:exam/componants/MainPage/ChefzCard.dart';
import 'package:exam/componants/MainPage/FilterCategory.dart';
import 'package:exam/componants/MainPage/FilterTags.dart';
import 'package:exam/componants/MainPage/SlideShowBanner.dart';
import 'package:exam/componants/MainPage/TryService.dart';
import 'package:exam/componants/MySearchBar.dart';
import 'package:flutter/material.dart';

class MainPageContent extends StatelessWidget {
  const MainPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 8.0),
        child: RefreshIndicator(
          onRefresh: () {
            return Future.delayed(Duration(seconds: 1), () {});
          },
          child: ListView.builder(
            itemBuilder: (ctx, idx) {
              return Column(children: [
                const Header(),
                const MySearchBar(),
                const SlideShowBanner(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Try with us',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                ),
                const TryService(),
                const FilterCategory(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Chefz Nearby You',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: FilterTags(),
                ),
                for (int i = 0; i < 10; i++)
                  const Column(children: [
                    ChefzCard(),
                  ]),
              ]);
            },
            // ListView(
          ),
        ));
  }
}
