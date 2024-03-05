import 'package:bottom_navigation_app/shared/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 0),
      body: Center(child: Icon(Icons.home)),
    );
  }
}
