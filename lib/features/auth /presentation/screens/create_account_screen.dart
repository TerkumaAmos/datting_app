import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/buttons/primary_button.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

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
        CustomPositionedCircle(top: 412, left:-18, width: 28, height: 28),    
        CustomPositionedCircle(top: 710, left: 350, width: 22, height: 22),
        Positioned(
          top: 3,
          left: 20,
          child: SvgPicture.asset('assets/icons/Group 2.svg')),
          Positioned(
          top: 521,
          left: 420,
          child: SvgPicture.asset('assets/icons/line.svg')),
        Column(children: [
              const SizedBox(height: 200),
                const Center(
                  child: Text(
                    "Create an Account.",
                    style: TextStyle(fontFamily: "Bold", fontSize: 28),
                  ),
                ),
               Spacer(),                
                PrimaryButton(
                  width: 343,
                  height: 56,
                  icon: 'assets/icons/Group 8.svg',iconWidth: 15,iconHeight: 10,
                  onPressed: (){}, label: 'Continue with Email', isFilled: true,),
                  SizedBox(height: 20,),
                   PrimaryButton(
                  textColor: Colors.black,

                  width: 343,
                  height: 56,
                  icon: 'assets/icons/Vector.svg',iconHeight: 16,iconWidth: 9,
                  onPressed: (){}, label: 'Continue with Facebook', isFilled: false,),
                    const SizedBox(height: 20),

                  PrimaryButton(
                  textColor: Colors.black,
                  backgroundColor: AppColors.black,
                  width: 343,
                  height: 56,
                  icon: 'assets/icons/Group.svg',iconHeight: 14.9,iconWidth: 14.58,
                  onPressed: (){}, label: 'Continue with Google', isFilled: false,),
                  SizedBox(height: 100)
                                ],),



      ],
      ),
      ),
      
    );
  }
}