import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/features/shared%20/presentation/widgets/icon_text_button.dart';
import 'package:datting_app/features/shared%20/widgets/custom_post_widget.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/buttons/bottom_navbar.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:datting_app/shared/widgets/inputs/app_inputs.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  _MessageScreenState createState() => _MessageScreenState(); 
}

class _MessageScreenState extends State<MessageScreen> {
  bool _isMessageClicked = false;
  bool _isLikesClicked = false;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
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
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconTextButton(
                        icon: Icons.message,
                        text: 'Messages',
                        isSelected: _isMessageClicked,
                        onTap: () {
                          setState(() {
                            _isMessageClicked = !_isMessageClicked;
                            if (_isMessageClicked) _isLikesClicked = false;
                          });
                        },
                      ),
                      const SizedBox(width: 16),
                      IconTextButton(
                        icon: Icons.favorite,
                        text: 'Likes',
                        isSelected: _isLikesClicked,
                        onTap: () {
                          setState(() {
                            _isLikesClicked = !_isLikesClicked;
                            if (_isLikesClicked) _isMessageClicked = false;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  CustomInput(
                    width: 370,
                    height: 48,
                    controller: searchController,
                    type: InputType.text,
                    hintText: 'Search for peoples and chats',
                    hintFontFamily: 'Regular',
                    hintFontSize: 13,
                    keyboardType: TextInputType.text,
                    borderRadius: 10,
                    prefixIcon: const Icon(Icons.search, size: 20, color: AppColors.black),
                    validator: (value) => null,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        SizedBox(height: 20),
                        Text('Messages', style: TextStyle(fontFamily: 'Regular', fontSize: 20)),
                        SizedBox(width: 10),
                        CustomPositionedCircle(
                          text: '12',
                          textColor: Colors.white,
                          top: 5,
                          left: 100,
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  // Add the new profile layout here
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        SizedBox(width: 16.0),
                        Expanded(
                          child: 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             CustomPostWidget(
                backgroundImage: const AssetImage('assets/images/groupp.png'),
                titleText: 'T.E.C.H_uma',
                timeText: '5 min ago',
                timeTextColor: const Color(0xff4285f4),
                descriptionText: 'Awsome what kind of stiff do you...',
                showPositionedCircle: true,
                circleText: '03',
                circleColor: Colors.blue,
                circleTextColor: Colors.white,
              ),
              SizedBox(height: 20),
               CustomPostWidget(
                backgroundImage: const AssetImage('assets/images/groupp.png'),
                titleText: 'T.E.C.H_uma',
                timeText: '5 min ago',
                timeTextColor: const Color(0xff4285f4),
                descriptionText: 'Awsome what kind of stiff do you...',
                showPositionedCircle: true,
                circleText: '03',
                circleColor: Colors.blue,
                circleTextColor: Colors.white,
              ),
                          SizedBox(height: 20),
              
               CustomPostWidget(
                backgroundImage: const AssetImage('assets/images/groupp.png'),
                titleText: 'T.E.C.H_uma',
                timeText: '5 min ago',
                timeTextColor: const Color(0xff4285f4),
                descriptionText: 'Awsome what kind of stiff do you...',
                showPositionedCircle: true,
                circleText: '03',
                circleColor: Colors.blue,
                circleTextColor: Colors.white,
              ),
                          SizedBox(height: 20),
              
               CustomPostWidget(
                backgroundImage: const AssetImage('assets/images/groupp.png'),
                titleText: 'T.E.C.H_uma',
                timeText: '5 min ago',
                timeTextColor: const Color(0xff4285f4),
                descriptionText: 'Awsome what kind of stiff do you...',
                showPositionedCircle: true,
                circleText: '03',
                circleColor: Colors.blue,
                circleTextColor: Colors.white,
              ),
                    SizedBox(height: 20),
              
               CustomPostWidget(
                backgroundImage: const AssetImage('assets/images/groupp.png'),
                titleText: 'T.E.C.H_uma',
                timeText: '5 min ago',
                timeTextColor: const Color(0xff4285f4),
                descriptionText: 'Awsome what kind of stiff do you...',
                showPositionedCircle: true,
                circleText: '03',
                circleColor: Colors.blue,
                circleTextColor: Colors.white,
              ),
                    SizedBox(height: 20),
              
               CustomPostWidget(
                backgroundImage: const AssetImage('assets/images/groupp.png'),
                titleText: 'T.E.C.H_uma',
                timeText: '5 min ago',
                timeTextColor: const Color(0xff4285f4),
                descriptionText: 'Awsome what kind of stiff do you...',
                showPositionedCircle: true,
                circleText: '03',
                circleColor: Colors.blue,
                circleTextColor: Colors.white,
              ),
                    SizedBox(height: 20),
              
               CustomPostWidget(
                backgroundImage: const AssetImage('assets/images/groupp.png'),
                titleText: 'T.E.C.H_uma',
                timeText: '5 min ago',
                timeTextColor: const Color(0xff4285f4),
                descriptionText: 'Awsome what kind of stiff do you...',
                showPositionedCircle: true,
                circleText: '03',
                circleColor: Colors.blue,
                circleTextColor: Colors.white,
              ),
                    SizedBox(height: 20),
              
               CustomPostWidget(
                backgroundImage: const AssetImage('assets/images/groupp.png'),
                titleText: 'T.E.C.H_uma',
                timeText: '5 min ago',
                timeTextColor: const Color(0xff4285f4),
                descriptionText: 'Awsome what kind of stiff do you...',
                showPositionedCircle: true,
                circleText: '03',
                circleColor: Colors.blue,
                circleTextColor: Colors.white,
              ),
                    SizedBox(height: 20),
              
               CustomPostWidget(
                backgroundImage: const AssetImage('assets/images/groupp.png'),
                titleText: 'T.E.C.H_uma',
                timeText: '5 min ago',
                timeTextColor: const Color(0xff4285f4),
                descriptionText: 'Awsome what kind of stiff do you...',
                showPositionedCircle: true,
                circleText: '03',
                circleColor: Colors.blue,
                circleTextColor: Colors.white,
                
              ),
              
              
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
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
      )
    );
  }
}