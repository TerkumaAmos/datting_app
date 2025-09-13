import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/features/auth%20/presentation/screens/create_account_screen.dart';
import 'package:datting_app/features/auth%20/presentation/screens/login_screen.dart';
import 'package:datting_app/features/auth%20/presentation/screens/sign_in_screen.dart';
import 'package:datting_app/features/shared%20/presentation/screens/onboarding/onboarding_screen_1.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/dottedBorder/dotted_border.dart';
import 'package:datting_app/shared/widgets/pageview/onboarding_pageview.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {




  void initState() {
    naviagateUser();
    super.initState();
  }

  naviagateUser() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>OnboardingScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
        final theme = Theme.of(context);

    return Scaffold(
      backgroundColor:AppColors.black,
      body: Column(
        children: [
          SizedBox(
            height: 865,
            child: Stack(
                            clipBehavior: Clip.hardEdge, 

              children: [
                Positioned(
                  top: -90,
                  left: -50,                  
                  child: CustomDottedBorder(
                     child: Container(width: 750,height: 400,decoration: BoxDecoration(shape: BoxShape.circle),),
                    
                  ),
                ),
                 CustomPositionedCircle(
            top: 180,
            left: 135,
            width: 15,
            height: 40,
          ),


                Positioned(
                  top: 185,
                  right: -90,                
                  child: CustomDottedBorder(
                     child: Container(width: 600,height: 500,decoration: BoxDecoration(shape: BoxShape.circle),
                     child: Center(child: Text('String.',style: TextStyle(fontFamily: 'Bold',color: AppColors.primary,fontSize: 40),)),
                     ),
                    
                  ),
                  ),

                   Positioned(
                  bottom: -90,
                  left: -380,                  
                  child: CustomDottedBorder(
                     child: Container(width: 750,height: 400,decoration: BoxDecoration(shape: BoxShape.circle),),
                    
                  ),),
                    CustomPositionedCircle(
            top: 675,
            left:190,
            width: 15,
            height: 40,
          ),
               
               
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}