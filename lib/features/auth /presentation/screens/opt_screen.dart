import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/buttons/primary_button.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:datting_app/shared/widgets/inputs/app_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class OptScreen extends StatefulWidget {
  const OptScreen({super.key});

  @override
  State<OptScreen> createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {
    final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true, // Key: Extend the body behind the AppBar
      appBar: AppBar(
        leading: CustomBackButton(
          svgPath: 'assets/icons/Frame1.svg',
          color: AppColors.black,
          size: 24,
          onPressed: () {
            context.go('/enterNum');


          },
        ),
        backgroundColor: Colors.transparent, // Make AppBar transparent
        elevation: 0, // Remove shadow
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.radialBackground,
        ),
        child: Stack(
          children: [
             CustomPositionedCircle(top: 42, left: 53, width: 12, height: 12),
        CustomPositionedCircle(top: 72, left: 330, width: 30, height: 30),
        CustomPositionedCircle(top: 683, left: 425, width: 22, height: 22),
        Positioned(
          top: 3,
          left: 20,
          child: SvgPicture.asset('assets/icons/Group 2.svg')),
          Positioned(
          top: 521,
          left: 420,
          child: SvgPicture.asset('assets/icons/line.svg')),
        Column(
          children: [
                        SizedBox(height: 135,),
                                    Image.asset('assets/images/Group 20.png',),


            Center(child: Container(
                alignment: Alignment.center,
              child: Text('Enter your user name',style: TextStyle(fontFamily: 'Bold',fontSize: 25),)),),
                                SizedBox(height: 20),
            
              Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomInput(
                       controller: nameController,
                      type: InputType.text,
                      hintText: 'Enter your name',hintFontFamily: 'Regular',hintFontSize: 13,
                      keyboardType: TextInputType.emailAddress,
                      borderRadius: 30,
                      
                    ),

                  ),
                    SizedBox(height: 500),
                  PrimaryButton(
                    
                    width: 343,height: 56,
                    onPressed: (){
                      context.go('/genderSelector');
                    }, label: 'Continue'),
               
                  ],)
          ],
        ),
      ),
    );
  }
}