import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/features/shared%20/widgets/circle_avatar.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/buttons/primary_button.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';


class SelectScreen extends StatelessWidget {
  const SelectScreen({super.key});

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
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: 
          AppGradients.radialBackground,
        ),
        child: Stack(
          children: [
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
                          SizedBox(height: 130),
                  Image.asset('assets/images/Group (1).png'),
                                SizedBox(height: 30),

              Center(child: Container(
                alignment: Alignment.center,
              child: Text('Add your best photos',style: TextStyle(fontFamily: 'Bold',fontSize: 25),)),),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),),
                                                    SizedBox(height: 10),


                    Text('Profile photos leads to more matches',style: TextStyle(fontSize: 15,fontFamily: 'Regular'),),
                                                                        SizedBox(height: 10),

                    Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        CircleAvatarField(
                        svgContent: SvgPicture.asset('assets/icons/Group 24.svg')
                      ),
                      CircleAvatarField(
                        svgContent: SvgPicture.asset('assets/icons/Group 24.svg')
                      ),
                      CircleAvatarField(
                        svgContent: SvgPicture.asset('assets/icons/Group 24.svg')
                      ),

                      ],
                    ),
                    SizedBox(height: 20),

                    Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        CircleAvatarField(
                        svgContent: SvgPicture.asset('assets/icons/Group 24.svg')
                      ),
                      CircleAvatarField(
                        svgContent: SvgPicture.asset('assets/icons/Group 24.svg')
                      ),
                      CircleAvatarField(
                        svgContent: SvgPicture.asset('assets/icons/Group 24.svg')
                      ),

                      ],
                    ),
                                        SizedBox(height: 320),

                    PrimaryButton(
                      height: 56,
                      width: 343,
                      onPressed:(){
                        showModalBottomSheet(
                          
                          context: context,
                          builder: (context) {
                            return Column(
                              

                              mainAxisSize: MainAxisSize.min,

                              children: [
                                SizedBox(height: 20), 
                                Center(
                                  child: Container(
                                    width: 30, // Fixed width for the line
                                    height: 2,  // Thickness of the line
                                    color: Colors.black, // Black color
                                  ),
                                ),
                               // SvgPicture.asset("assets/Vector 9.svg"),
                                SizedBox(height: 20),
                                _buildCustomOption(context, 'assets/icons/Group (1).svg', 'Take a photo',   () {
                                    Navigator.pop(context);
                                    print('Camera roll selected');
                                },
                                ),
                                SizedBox(height: 20),
                                _buildCustomOption(context, 'assets/icons/Vector (2).svg', 'Camera roll',   () {
                                  Navigator.pop(context);
                                  print('Camera roll selected');
                                },
                                ),
                                SizedBox(height: 20),

                                _buildCustomOption(context, 'assets/icons/instagram.svg', 'Instagram',   () {
                                  Navigator.pop(context);
                                  print('Camera roll selected');
                                },
                                ),
                                SizedBox(height: 20),

                                _buildCustomOption(context, 'assets/icons/facebook.svg', 'Facebook',   () {
                                  Navigator.pop(context);
                                  print('Camera roll selected');
                                },),
                                SizedBox(height: 40),
                              ],
                            );
                          },
                      );
                      }, label: 'Choose')
            ]
          
      ),
          ])
        
      ));
  }
}



Widget _buildCustomOption(
    BuildContext context, String svgPath, String title, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
          height: 70,
      width: 420,

      margin: EdgeInsets.only(left: 10.0,right: 10),
      padding: const EdgeInsets.only(right: 10.0, left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: [
          // Icon
          SvgPicture.asset(
            svgPath,
            width: 24,
            height: 24,
          ),
          SizedBox(width: 16),
          // Text
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Regular',
            ),
          ),
        ],
      ),
      
    ),
  );
}