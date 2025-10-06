import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/features/shared%20/widgets/card_widget.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/buttons/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StringPremiumScreen extends StatelessWidget {
  const StringPremiumScreen({super.key});

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
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
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
            children: [
              const SizedBox(height: 120),
              const Center(
                child: Text(
                  'String Premium',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: "Bold",
                  ),
                ),
              ),
                          SizedBox(height: 20),
          
              Align(
                alignment: Alignment.centerLeft, // Aligns the text to the start (left)
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0), // Optional: Add left padding for better spacing
                  child: Text(
                    'Current plans',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontFamily: "Regular",
                    ),
                  ),
                ),
              ),
                          SizedBox(height: 20),
          
              PremiumCardWidget(
                title: 'Bronze',
                price: '\$6.99',
                heartsPrefix: 'Get ',
                heartsNumber: '220',
                heartsSuffix: ' Hearts',
                feature: 'See who likes your profile',
                buttonText: 'Buy Bronze Premium',
                isYellowHalf: true,
              ),
              SizedBox(height: 20),
              PremiumCardWidget(
                title: 'Silver',
                price: '\$17.99',
                heartsPrefix: 'Get ',
                heartsNumber: '640',
                heartsSuffix: ' Hearts',
                feature: 'See who likes your profile',
                buttonText: 'Buy Silver Premium',
                isYellowHalf: true,
              ),
                          SizedBox(height: 20),
          
              PremiumCardWidget(
                title: 'Gold',
                price: '\$29.99',
                heartsPrefix: 'Get ',
                heartsNumber: '1020',
                heartsSuffix: ' Hearts',
                feature: 'See who likes your profile',
                buttonText: 'Buy Gold Premium',
                isYellowHalf: true,
              ),
                            SizedBox(height: 20),

              PremiumCardWidget(
                title: 'Diamond',
                price: '\$39.99',
                heartsPrefix: 'Get ',
                heartsNumber: '1200',
                heartsSuffix: ' Hearts',
                feature: 'See who likes your profile',
                buttonText: 'Buy Diamond Premium',
                isYellowHalf: true,
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
              context.go('/appSettings2'); // Replace with your profile route
              break;
          }
        },
      )
    );
  }
}