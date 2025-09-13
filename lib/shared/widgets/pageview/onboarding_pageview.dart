

import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/features/shared%20/presentation/screens/onboarding/onboarding_screen2.dart';
import 'package:datting_app/features/shared%20/presentation/screens/onboarding/onboarding_screen3.dart';
import 'package:datting_app/features/shared%20/presentation/screens/onboarding/onboarding_screen_1.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  
@override

  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  final int _numPages = 3;

  // The list of pages, now using the imported widgets
  final List<Widget> _pages = [
    const OnboardingScreen1(),
    const OnboardingScreen2(),
    const OnboardingScreen3(),
  ];

 int _currentPage = 0;

  
@override

  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onSkipPressed() {
    _pageController.animateToPage(
      _numPages - 1,
      duration: const Duration(seconds: 2),
      curve: Curves.easeOut,
    );
  }

  void _onNextPressed() {
    _pageController.nextPage(
      duration: const Duration(seconds: 2),
      curve: Curves.easeIn,
    );
  }

  void _onLetsStartPressed() {
    // Navigate to the main application screen
    debugPrint("Let's Start button pressed!");
  }



  
@override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView with the imported OnboardingPage widgets
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) => setState(() {
              _currentPage = page;
               
            }),
            itemBuilder: (BuildContext context, int index) { 
              return _pages[index];
             },
          ),
          Positioned(
            bottom: 90,
            left: 20,
            right: 20,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: _numPages,
                  effect: const ExpandingDotsEffect(
                    activeDotColor:AppColors.primary,
                    dotColor: AppColors.white,
                  ),
                ),
                const SizedBox(height: 30),
                if (_currentPage < _numPages - 1)
                 
                   Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: _onSkipPressed,
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white),
                      ),
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                          color:AppColors.black,
                          fontFamily: "Regular",
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 56,

                    child: ElevatedButton(
                      
                      onPressed:_onSkipPressed,
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                      ),
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          color:AppColors.white,
                          fontFamily: "Regular",
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              )

                else
                  SizedBox(
                    width: 207,
                    child: ElevatedButton(
                      onPressed: _onLetsStartPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:AppColors.primary,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: GestureDetector(
                       onTap: (){
                        context.go('/login');
                       },
                        child: const Text("Lets Start",style: TextStyle(fontFamily: 'Regular',fontSize: 20,color: AppColors.white),)),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}