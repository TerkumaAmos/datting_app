import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/buttons/primary_button.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:datting_app/shared/widgets/inputs/app_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class EnterNumScreen extends StatefulWidget {
  const EnterNumScreen({super.key});

  @override
  State<EnterNumScreen> createState() => _EnterNumScreenState();
}

class _EnterNumScreenState extends State<EnterNumScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         extendBodyBehindAppBar: true, // Key: Extend the body behind the AppBar
      appBar: AppBar(
        leading: CustomBackButton(
          svgPath: 'assets/icons/Frame1.svg',
          color: AppColors.black,
          size: 24,
          onPressed: () {
            context.go('/splash');


          },
        ),
        backgroundColor: Colors.transparent, // Make AppBar transparent
        elevation: 0, // Remove shadow
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.radialBackground,

        ),
        child: Stack(children: [
           CustomPositionedCircle(top: 42, left: 53, width: 12, height: 12),
        CustomPositionedCircle(top: 72, left: 330, width: 30, height: 30),
        CustomPositionedCircle(top: 311, left: 323, width: 28, height: 28),
        CustomPositionedCircle(top: 558, left: -11, width: 22, height: 22),
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
            Center(child: Container(
               alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 30),
              child: Text('Sign In',style: TextStyle(fontSize: 30,fontFamily: 'Bold'),),),),
              Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 29),
                    child: Text(
                      "Please enter below the details to continue",
                      style: TextStyle(
                          fontFamily: 'Regular',
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomInput(
                      controller: emailController,
                      type: InputType.email,
                      hintText: 'Email',hintFontFamily: 'Regular',hintFontSize: 13,
                      keyboardType: TextInputType.emailAddress,
                      borderRadius: 30,
                      prefixIconSvgPath: 'assets/icons/mail.svg',
                      
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomInput(
                      controller: passwordController,
                      type: InputType.password,
                      hintText: 'Password',hintFontFamily: 'Regular',hintFontSize: 13,
                      keyboardType: TextInputType.name,
                      borderRadius: 30,
                      prefixIconSvgPath: 'assets/icons/Frame.svg',prefixIconWidth: 10,prefixIconHeight: 14,
                      suffixIconSvgPath: 'assets/icons/Group 9.svg',
                      
                    ),
                  ),
                   SizedBox(height: 450),
                  PrimaryButton(
                    width: 343,height: 56,
                    onPressed: (){
                      context.go('/opt');
                    }, label: 'Sign In'),
               
          ],
        )
        ],
        ),
      ),
    );
  }
}