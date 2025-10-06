import 'package:datting_app/core/theme/app_colors.dart' show AppColors;
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/buttons/bottom_navbar.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class AppSettingScreen extends StatelessWidget {
  const AppSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
extendBodyBehindAppBar: true, // Key: Extend the body behind the AppBar
      appBar: AppBar(
        leading: CustomBackButton(
          svgPath: 'assets/icons/Frame1.svg',
          color: AppColors.black,
          size: 24,
          onPressed: () {
            context.go('/enterNum');


          },
        ),
        backgroundColor: Colors.transparent, // Make AppBar transparent
        elevation: 0, // Remove shadow
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.radialBackground,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Icon(Iconsax.setting_2),SizedBox(width: 10),
                    Text('App Settings',style: TextStyle(fontFamily: 'Regular',fontSize: 22),),

                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text('Contact us',style: TextStyle(fontSize: 18,fontFamily: 'Regular'),),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              )
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