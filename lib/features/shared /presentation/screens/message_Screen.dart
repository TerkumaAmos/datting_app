import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/features/shared%20/presentation/widgets/icon_text_button.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
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
            Column(
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
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: Image(image: AssetImage('assets/images/groupp.png')).image,
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'T.E.C.H_uma',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                Text(
                                  '5 min ago',
                                  style: TextStyle(color: Color(0xff4285f4), fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.0),
                            Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Text(
                                  'Awsome what kind of stiff do you...',
                                  style: TextStyle(fontSize: 14,fontFamily: 'Regular'),
                                  
                                  
                                ),
                                 CustomPositionedCircle(
                                  width: 28,
                                  height: 28,
                                  color: Colors.blue,
                                  text: '03',
                                  textColor: Colors.white,
                        
                      ),
                              
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}