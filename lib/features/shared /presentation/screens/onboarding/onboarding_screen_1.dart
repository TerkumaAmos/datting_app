import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/dottedBorder/dotted_border.dart';
import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatelessWidget {

  const OnboardingScreen1({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 210,
                    left: 210,
                    child: Image(
                      width: 220.91,
                      height: 380.98,
                      image: const AssetImage("assets/images/image 4.png"),
                    ),
                  ),
                  Positioned(
                    top: 131,
                    left: -20,
                    child: Image(
                      image: const AssetImage("assets/images/image 3.png"),
                    ),
                  ),
                  Positioned(
                    top: -90,
                    left: -50,
                    child: CustomDottedBorder(
                                            borderColor: AppColors.white,

                      child: Container(
                        width: 700,
                        height: 400,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  
                  Positioned(
                    top: 600,
                    left: 50,
                    child: Text(
                      'Find amazing people\n       around you',
                      style: TextStyle(
                        fontFamily: 'Regular',
                        fontSize: 30,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                 Positioned(
                    top: 397,
                    left: -170,
                    child: CustomDottedBorder(
                      borderColor: AppColors.white,
                      child: Container(
                        width: 724,
                        height: 497,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}