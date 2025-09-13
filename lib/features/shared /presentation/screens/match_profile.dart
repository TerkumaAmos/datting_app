import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/buttons/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MatchProfileScreen extends StatelessWidget {
  const MatchProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: CustomBackButton(
          svgPath: 'assets/icons/Frame1.svg',
          color: AppColors.white,
          size: 24,
          onPressed: () {
            context.go('/enterNum');
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              child: Icon(Icons.more_horiz_outlined, color: AppColors.white),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/image 45.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Zelia Booth,',
                      style: TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '19',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    SvgPicture.asset(
                      'assets/icons/verify.svg',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Product Designer at wespa',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: AppColors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      Iconsax.location,
                      color: AppColors.primary,
                      size: 20,
                    ),
                    Text(
                      '5 Km away | Canada ',
                      style: TextStyle(color: AppColors.white, fontSize: 15),
                    ),
                    Icon(Icons.home_filled),
                    Text(
                      'Toronto',
                      style: TextStyle(fontSize: 15, color: AppColors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Bio',
                  style: TextStyle(
                      fontFamily: 'Regular',
                      fontSize: 25,
                      color: AppColors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Placerat felis neque\ntincidint id imperdiet aing rhoncus eget',
                  style: TextStyle(
                      fontFamily: 'Regular',
                      fontSize: 15,
                      color: AppColors.white),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Other Photos',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Regular',
                      color: AppColors.white),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/Mask groupp.png'),
                    Image.asset('assets/images/Mask groupp.png'),
                    Image.asset('assets/images/Mask groupp.png'),
                    Image.asset('assets/images/Mask groupp.png'),
                  ],
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