import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/features/shared%20/widgets/circle_avatar.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';


class AddPhotoScreen extends StatelessWidget {
  const AddPhotoScreen({super.key});

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
          gradient: AppGradients.radialBackground,
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
                        svgContent: Image.asset('assets/images/Mask group.png'),
                      ),
                      CircleAvatarField(
                        svgContent: Image.asset('assets/images/Mask group (2).png'),
                      ),
                      CircleAvatarField(
                        svgContent: SvgPicture.asset('assets/icons/Group 24.svg')
                      ),
                    ],),
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
                    )
            ],
            ),

          ],
        ),
      ),
    );
  }
}