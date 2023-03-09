import 'package:flutter/material.dart';
import 'package:project_3/component/home_cart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeCart(),
    );
  }
}
