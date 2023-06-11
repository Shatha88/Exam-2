// ignore_for_file: file_names, non_constant_identifier_names

import 'package:exam/Pages/mainPage.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> Routes() {
  return {
    '/home': (context) => const MainPage(),
    // '/itemView': (context) => const ProductDetails(),
    // '/cart': (context) => const CartPage(cartData: [],),
  };
  
}
