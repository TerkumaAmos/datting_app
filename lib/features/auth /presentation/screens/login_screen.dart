import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/buttons/primary_button.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: const BoxDecoration(
        gradient: AppGradients.radialBackground,
      ),
      child: Stack(children: [
        CustomPositionedCircle(top: 42, left: 53, width: 12, height: 12),
        CustomPositionedCircle(top: 72, left: 330, width: 30, height: 30),
        CustomPositionedCircle(top: 354, left: 79, width: 28, height: 28),
        CustomPositionedCircle(top: 540, left: 301, width: 12, height: 12),
        Positioned(
          top: 360,
          left: -5,
          child: SvgPicture.asset('assets/icons/line2.svg')),
          Positioned(
          top: 221,
          left: 420,
          child: SvgPicture.asset('assets/icons/line.svg')),
        Column(children: [
                            const SizedBox(height: 200),
                const Center(
                  child: Text(
                    "String.",
                    style: TextStyle(fontFamily: "Regular", fontSize: 40),
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: const TextSpan(
                    text: "Meet thousand of people\n by creating an",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontFamily: "Regular"),
                    children: [
                      TextSpan(
                        text: " account",
                        style: TextStyle(fontFamily: 'Bold',fontSize: 25),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 400),
                PrimaryButton(
                  width: 343,
                  height: 56,
                  onPressed: (){
                    context.go('/createAccount');
                  }, label: 'Create Account', isFilled: true,),
                  SizedBox(height: 20,),
                   PrimaryButton(
                  backgroundColor: AppColors.black,
                  width: 343,
                  height: 56,
                  onPressed: (){
                    context.go('/signIn');
                  }, label: 'Sign In', isFilled: true,)
                                ],),



      ],
      ),
      ),
      
    );
  }
}