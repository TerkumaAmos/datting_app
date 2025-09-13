import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/buttons/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  Widget _buildCircularButton(IconData icon, Color color, {double size = 50, double iconSize = 25}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        // color: Color(0xFF4A4E2B), 
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
      ),
      child: Icon(icon, color: color, size: iconSize),
    );
  }

  Widget _buildNavIcon(IconData icon, {bool isActive = false}) {
    return Icon(
      icon,
      color: isActive ? Color(0xFFFFD700) : Colors.white70,
      size: 30,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // Allows the body to extend behind the bottom nav bar
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4A4E2B),
              Color(0xFF000000),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/Group 28.png'),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Hi, 👋 T.E.C.H_uma',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontFamily: 'Bold',
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Badge.count(
                        count: 12,
                        textColor: Colors.white,
                        child: Icon(
                          CupertinoIcons.heart_fill,
                          color: AppColors.primary,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: Stack(
                    children: [
                      // Shifted Stack with images downward slightly
                      Positioned(
                        left: 110,
                        top: 150,
                        child: Image.asset(
                          'assets/images/Rectangle 47.png',
                          width: 300,
                          height: 444,
                        ),
                      ),
                      Positioned(
                        left: 44,
                        top: 80,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/image 44.png',
                              width: 336,
                              height: 498,
                            ),
                            Positioned(
                              left: 10,
                              bottom: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Agber Amos',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Bold',
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      SvgPicture.asset(
                                        'assets/icons/verify.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 1,
                                        height: 20,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Singer, Friendly | Km away',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Regular',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Shifted circular buttons downward slightly
                      Positioned(
                        bottom: 50,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildCircularButton(Icons.close, Color(0xFFFFD700), size: 50, iconSize: 25),
                            SizedBox(width: 20),
                            _buildCircularButton(Iconsax.message, Color(0xFFFFD700), size: 70, iconSize: 35),
                            SizedBox(width: 20),
                            _buildCircularButton(Iconsax.heart, Color(0xFFFFD700), size: 50, iconSize: 25),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: 0, // Set the index for the active item (e.g., home)
        onItemTapped: (index) {
          // Handle navigation based on the tapped index
          switch (index) {
            case 0:
              context.go('/home'); // Replace with your home route
              break;
            case 1:
              context.go('/matches'); // Replace with your matches route
              break;
            case 2:
              context.go('/messages'); // Replace with your messages route
              break;
            case 3:
              context.go('/profile'); // Replace with your profile route
              break;
          }
        },
      ),
    );
  }
}