import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/dottedBorder/dotted_border.dart';
import 'package:flutter/material.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

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
                  const Positioned(
                    top: 157,
                    left: 152,
                    child: Image(
                      width: 360.91,
                      height: 380.98,
                      image: AssetImage("assets/images/img2.png"), 
                    ),
                  ),
                  const Positioned(
                    top: 131,
                    left: -10,
                    child: Image(
                      width: 300,
                      height: 400,
                      image: AssetImage("assets/images/img3.png"), 
                    ),
                  ),
                  const Positioned(
                    top: 249,
                    left: -20,
                    child: Image(
                      image: AssetImage("assets/images/img6.png"), 
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
                    left: 100,
                    child: Text(
                      'Meet and chat to \n people near you ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Regular',
                        fontSize: 30,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                   Positioned(
                    top: 397,
                    left: -130,
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