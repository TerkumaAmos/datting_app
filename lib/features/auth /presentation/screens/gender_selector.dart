import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/buttons/primary_button.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:datting_app/shared/widgets/inputs/app_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class GenderSelectorScreen extends StatefulWidget {
  const GenderSelectorScreen({super.key});

  @override
  State<GenderSelectorScreen> createState() => _GenderSelectorScreenState();
}

class _GenderSelectorScreenState extends State<GenderSelectorScreen> {
      final nameController = TextEditingController();

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
            context.go('/opt');


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
        CustomPositionedCircle(top: 338, left: 342, width: 28, height: 28),
        CustomPositionedCircle(top: 558, left: -11, width: 22, height: 22),
        Positioned(
          top: 521,
          left: 420,
          child: SvgPicture.asset('assets/icons/line.svg')),
          Positioned(
          top: 3,
          left: 20,
          child: SvgPicture.asset('assets/icons/Group 2.svg')),
        Column(
          children: [
            SizedBox(height: 135,),
            Image.asset('assets/images/Vector.png'),                                    SizedBox(height: 30),

             Center(child: Container(
                alignment: Alignment.center,
              child: Text('What\'s your Gender?',style: TextStyle(fontFamily: 'Bold',fontSize: 25),)),),
                                SizedBox(height: 20),
            
              Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomInput(
                    prefixIconSvgPath: 'assets/icons/Group1.svg',
                       controller: nameController,
                      type: InputType.text,
                      hintText: 'Man',hintFontFamily: 'Regular',hintFontSize: 15,
                      keyboardType: TextInputType.emailAddress,
                      borderRadius: 30,
                      
                    ),

                  ),SizedBox(height: 30),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomInput(
                    prefixIconSvgPath: 'assets/icons/Vector1.svg',
                       controller: nameController,
                      type: InputType.text,
                      hintText: 'Woman',hintFontFamily: 'Regular',hintFontSize: 15,
                      keyboardType: TextInputType.emailAddress,
                      borderRadius: 30,
                      
                    ),

                  ),
                  SizedBox(height: 30),
                  Text('Who do you want to date?',style: TextStyle(fontFamily: 'Bold',fontSize: 20),),
                                                      SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomInput(
                    prefixIconSvgPath: 'assets/icons/Group1.svg',
                       controller: nameController,
                      type: InputType.text,
                      hintText: 'Man',hintFontFamily: 'Regular',hintFontSize: 15,
                      keyboardType: TextInputType.emailAddress,
                      borderRadius: 30,
                      
                    ),

                  ),
                                    SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomInput(
                    prefixIconSvgPath: 'assets/icons/Vector1.svg',
                       controller: nameController,
                      type: InputType.text,
                      hintText: 'Woman',hintFontFamily: 'Regular',hintFontSize: 15,
                      keyboardType: TextInputType.emailAddress,
                      borderRadius: 30,
                      
                    ),

                  ),
                                    SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomInput(
                      prefixIconSvgPath1: 'assets/icons/Vector1.svg',
                      
                    prefixIconSvgPath: 'assets/icons/Group1.svg',
                       controller: nameController,
                      type: InputType.text,
                      hintText: 'All',hintFontFamily: 'Regular',hintFontSize: 15,
                      keyboardType: TextInputType.emailAddress,
                      borderRadius: 30,
                      
                    ),

                  ),
                                                      SizedBox(height: 90),

                   PrimaryButton(
                    
                    width: 343,height: 56,
                    onPressed: (){
                      context.go('/birthday');
                    }, label: 'Continue'),
               
          ],
        )
        ]
        
      ),
      ),
    );
  }
}