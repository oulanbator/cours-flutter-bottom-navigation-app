import 'package:bottom_navigation_app/shared/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 2),
      body: Center(child: Icon(Icons.admin_panel_settings)),
    );
  }
}
