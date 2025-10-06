import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/buttons/bottom_navbar.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppSetting2Screen extends StatelessWidget {
  const AppSetting2Screen({super.key});

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
          
          Container(
            margin: EdgeInsets.only(right: 80),
            child: Text(
              
              'My Preferences', 
              style: TextStyle(
                fontFamily: 'Regular',
                fontSize: 22,
                color: AppColors.black, 
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Edit profile',style: TextStyle(color: AppColors.primary,fontFamily: 'Regular',fontSize: 13),),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.radialBackground,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 150),
           Center(child: Image.asset('assets/images/Groupp 28.png')), 
            Text('Patrick Hale',style: TextStyle(color: AppColors.black,fontFamily: 'Regular',fontSize: 22),),
           Text('Sans Francisco US',style: TextStyle(color: Color(0xff939393),fontFamily: 'Regular',fontSize: 15),),
           Align(
            
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('About me',style: TextStyle(fontFamily: 'Regular',fontSize: 16),),
            )
            ),
            Align(
                        alignment: Alignment.bottomLeft,
          
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Placerat felis neque tincidunt\nid imperdiet aing rhoncus eget. ',style: TextStyle(color: Color(0xff939393),fontFamily: 'Regular',fontSize: 12)),
              ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Text('Status:',style: TextStyle(fontFamily: 'Regular',fontSize: 18),),              SizedBox(width: 10),
                
                  Text('single',style: TextStyle(color: Color(0xff939393),fontFamily: 'Regular',fontSize: 15),),
                  SizedBox(width: 10),
                  Text('Height:',style: TextStyle(fontFamily: 'Regular',fontSize: 18)),              SizedBox(width: 10),
                
                  Text("6.0'")
                ],),
              ),
                          SizedBox(height: 10),
          
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Text('Hair Color:',style: TextStyle(fontFamily: 'Regular',fontSize: 18),),              SizedBox(width: 10),
                
                  Text('Black',style: TextStyle(color: Color(0xff939393),fontFamily: 'Regular',fontSize: 15),),
                  SizedBox(width: 10),
                  Text('Kids',style: TextStyle(fontFamily: 'Regular',fontSize: 18)),              SizedBox(width: 10),
                
                  Text("0",style: TextStyle(color: Color(0xff939393),fontSize: 15))
                ],),
              ),
                                      SizedBox(height: 10),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Text('Occupation:',style: TextStyle(fontFamily: 'Regular',fontSize: 18),),              SizedBox(width: 10),
                
                  Text('Student',style: TextStyle(color: Color(0xff939393),fontFamily: 'Regular',fontSize: 15),),
                
                ],),
              ),
                                                  SizedBox(height: 10),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Text('Basic Information:',style: TextStyle(fontFamily: 'Regular',fontSize: 18),),              SizedBox(width: 10),
                
                  Text("21/5.9'/single",style: TextStyle(color: Color(0xff939393),fontSize: 15),),
                  SizedBox(width: 10),
                
                ],),
              ),
                 
                                      SizedBox(height: 10),
                                      Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Text('Interest:',style: TextStyle(fontFamily: 'Regular',fontSize: 18),),              SizedBox(width: 10),
                
                  Text('Reading, playing Soccer...',style: TextStyle(color: Color(0xff939393),fontFamily: 'Regular',fontSize: 15),),
                
                ],),
              ),
                                      SizedBox(height: 10),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Text('Looking for:',style: TextStyle(fontFamily: 'Regular',fontSize: 18),),              SizedBox(width: 10),
                
                  Text("Partner",style: TextStyle(color: Color(0xff939393),fontFamily: 'Regular',fontSize: 15),),
                  SizedBox(width: 10),
                  
                
                ],),
              ),
                                                  SizedBox(height: 10),
          
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Photos',style: TextStyle(fontFamily: 'Regular',fontSize: 18),),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/mask.png',width: 90.84,height: 90.84,),
                      Image.asset('assets/images/mask.png',width: 90.84,height: 90.84,),
                      Image.asset('assets/images/mask.png',width: 90.84,height: 90.84,),
                    ],
                  ),
                ),
                SizedBox(height: 30)
          ,              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/mask.png',width: 90.84,height: 90.84,),
                      Image.asset('assets/images/mask.png',width: 90.84,height: 90.84,),
                      Image.asset('assets/images/mask.png',width: 90.84,height: 90.84,),
                    ],
                  ),
                ),
           ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: 0, // Set the index for the active item (e.g., home)
        onItemTapped: (index) {
          // Handle navigation based on the tapped index
          switch (index) {
            case 0:
              context.go('/home'); // Replace with your home route
              break;
            case 1:
              context.go('/matches'); // Replace with your matches route
              break;
            case 2:
              context.go('/messages'); // Replace with your messages route
              break;
            case 3:
              context.go('/appSettings2'); // Replace with your profile route
              break;
          }
        },
      ),
      
    );
  }
}