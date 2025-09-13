import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/buttons/primary_button.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: CustomBackButton(
          svgPath: 'assets/icons/Frame1.svg',
          color: AppColors.black,
          size: 24,
          onPressed: () {
            context.go('/enterNum');
          },
        ),
        actions: [
          
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              child: Text(
                'Skip', 
                style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: 20,
                  color: AppColors.black, 
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.radialBackground),
        child: Stack(
          children: [
            CustomPositionedCircle(top: 42, left: 53, width: 12, height: 12),
            CustomPositionedCircle(top: 72, left: 410, width: 30, height: 30),
            CustomPositionedCircle(top: 338, left: 342, width: 28, height: 28),
            CustomPositionedCircle(top: 558, left: -11, width: 22, height: 22),
            Positioned(
              top: 521,
              left: 420,
              child: SvgPicture.asset('assets/icons/line.svg'),
            ),
            Positioned(
              top: 3,
              left: 20,
              child: SvgPicture.asset('assets/icons/Group 2.svg'),
            ),
            Column(
              children: [
                SizedBox(height: 130),
                SvgPicture.asset('assets/icons/done.svg'),
                SizedBox(height: 30),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'verify',
                        style: TextStyle(fontFamily: 'Bold', fontSize: 25),
                      ),
                      SizedBox(width: 10),
                      SvgPicture.asset('assets/icons/verify.svg'),
                    ],
                  ),
                ),
                Text(
                  'Verify your pictures to become a verified profile.\nOpen camera to take a selfie and image match\nthe display picture',
                  style: TextStyle(fontFamily: 'Regular', fontSize: 14),
                ),
                SizedBox(height: 30),
                Image.asset(
                  'assets/images/Mask group (3).png',
                  width: 355,
                  height: 318,
                ),
                SizedBox(height: 50),
                Container(
                  width: 343,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Open camera',
                      style: TextStyle(
                        fontFamily: 'Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                PrimaryButton(
                  width: 343,
                  height: 54,
                  onPressed: () {},
                  label: 'Sign In',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}