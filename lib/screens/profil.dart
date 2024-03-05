import 'package:bottom_navigation_app/shared/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 1),
      body: Center(child: Icon(Icons.person)),
    );
  }
}
