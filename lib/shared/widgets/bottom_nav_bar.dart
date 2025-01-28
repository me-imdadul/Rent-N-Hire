// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:rent_n_hire/core/constants/colors.dart';

class BottomNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavBar({super.key, required this.navigationShell});

  void _onTap(int index) {
    navigationShell.goBranch(index,
        initialLocation: index == navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: bottombar2(context),
    );
  }

  Widget bottombar2(BuildContext ctx) {
    return NavigationBar(
        backgroundColor: Theme.of(ctx).scaffoldBackgroundColor,
        selectedIndex: navigationShell.currentIndex,
        indicatorColor: kyellow.withOpacity(0.35),
        onDestinationSelected: navigationShell.goBranch,
        destinations: destinations
            .map((destination) => NavigationDestination(
                icon: Icon(
                  destination.icon,
                  color: kyellow,
                ),
                label: destination.label))
            .toList());
  }

  Widget bottombar1() {
    return BottomNavigationBar(
      currentIndex: navigationShell.currentIndex,
      onTap: _onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.work), label: "Services"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}

class Destination {
  final String label;
  final IconData icon;
  Destination({
    required this.label,
    required this.icon,
  });
}

List<Destination> destinations = [
  Destination(icon: HugeIcons.strokeRoundedHome10, label: "Home"),
  Destination(icon: HugeIcons.strokeRoundedSearch01, label: "Search"),
  Destination(icon: HugeIcons.strokeRoundedClock01, label: "History"),
  Destination(icon: HugeIcons.strokeRoundedUser, label: "Profile"),
];
