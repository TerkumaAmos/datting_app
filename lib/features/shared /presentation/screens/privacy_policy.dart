import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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
        
        backgroundColor: Colors.transparent, 
        elevation: 0, 
        actions: [
          Container(
            margin:EdgeInsets.only(right: 210),
            child: Text('Privacy Policy',style: TextStyle(fontSize: 22,fontFamily: 'Regular'),))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.radialBackground,
        ),
       
        ),
    );
  }
}