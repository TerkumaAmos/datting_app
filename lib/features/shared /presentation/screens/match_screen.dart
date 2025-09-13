import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/buttons/primary_button.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppGradients.radialBackground,
        ),
        child: Stack(
          children: [
            // CustomPositionedCircle widgets (already correctly placed in Stack)
            CustomPositionedCircle(top: 42, left: 53, width: 12, height: 12),
            CustomPositionedCircle(top: 72, left: 330, width: 30, height: 30),
            CustomPositionedCircle(top: 259, left: 39, width: 28, height: 28),
            CustomPositionedCircle(top: 540, left: 301, width: 12, height: 12),
            // SVG assets (already correctly placed in Stack)
            Positioned(
              top: 360,
              left: -5,
              child: SvgPicture.asset('assets/icons/line2.svg'),
            ),
            Positioned(
              top: 221,
              left: 420,
              child: SvgPicture.asset('assets/icons/line.svg'),
            ),
            // Image assets moved to Stack
            Positioned(
              top: 252,
              left: 68,
              child: Image.asset('assets/images/Groupp 28.png'),
            ),
            Positioned(
              top: 332,
              left: 171,
              child: Image.asset('assets/images/Maskk groupp.png'),
            ),
            Positioned(
              top: 392.5,

              left: 136.18,
              child:Icon(Iconsax.heart,color: AppColors.primary,weight: 62.07,size: 53.07)
            ),
            // Column for text and buttons
            Column(
              children: [
                const SizedBox(height: 130),
                const Center(
                  child: Text(
                    "It's a match!",
                    style: TextStyle(fontFamily: "Regular", fontSize: 40),
                  ),
                ),
                Text(
                  'You have like eachother',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                    fontFamily: "Regular",
                  ),
                ),
                SizedBox(height: 500),
                PrimaryButton(
                  width: 343,
                  height: 56,
                  onPressed: () {
                    context.go('/createAccount');
                  },
                  label: 'Send Message!',
                  isFilled: true,
                ),
                const SizedBox(height: 20),
                PrimaryButton(
                  backgroundColor: AppColors.black,
                  width: 343,
                  height: 56,
                  onPressed: () {
                    context.go('/signIn');
                  },
                  label: 'Keep Swiping!',
                  isFilled: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}