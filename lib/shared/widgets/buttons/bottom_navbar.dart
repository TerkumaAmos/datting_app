import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CustomBottomNavBar extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;

  const CustomBottomNavBar({
    super.key,
    required this.onItemTapped,
    required this.selectedIndex,
  });

  // Updated _buildNavIcon to include isActive parameter
  Widget _buildNavIcon(IconData icon, {required bool isActive}) {
    return Icon(
      icon,
      color: isActive ? const Color(0xFFFFD700) :Color(0xFFFFD700),
      size: 30,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFFFFD700),
      unselectedItemColor: Colors.white70,
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: _buildNavIcon(Iconsax.home, isActive: selectedIndex == 0),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _buildNavIcon(Iconsax.heart, isActive: selectedIndex == 1),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _buildNavIcon(Iconsax.message, isActive: selectedIndex == 2),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _buildNavIcon(Iconsax.profile_tick, isActive: selectedIndex == 3),
          label: '',
        ),
      ],
    );
  }
}