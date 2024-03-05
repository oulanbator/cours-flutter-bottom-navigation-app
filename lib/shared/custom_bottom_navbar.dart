import 'package:bottom_navigation_app/screens/home.dart';
import 'package:bottom_navigation_app/screens/options.dart';
import 'package:bottom_navigation_app/screens/profil.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;

  const CustomBottomNavBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profil",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.admin_panel_settings),
          label: "Options",
        ),
      ],
      currentIndex: selectedIndex,
      onTap: (index) => _navigate(context, index),
    );
  }

  _navigate(BuildContext context, int index) {
    late Widget destination;

    switch (index) {
      case 0:
        destination = const Home();
        break;
      case 1:
        destination = const Profil();
        break;
      case 2:
        destination = const Options();
        break;
    }

    // Implémentation simple de la navigation
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => destination,
      ),
    );

    // Implémentation plus complexe mais qui permet d'avoir plus de contrôle sur la transition d'un écran à l'autre.
    // Ici on supprime complètement l'animation pour avoir un transition plus fluide.
    // Navigator.push(
    //   context,
    //   PageRouteBuilder(
    //     pageBuilder: (context, animation, secondaryAnimation) {
    //       // Le widget que vous souhaitez afficher
    //       return destination;
    //     },
    //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //       // Aucune animation n'est définie, donc pas de transition
    //       return child;
    //     },
    //   ),
    // );
  }
}
