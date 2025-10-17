import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/features/shared%20/presentation/widgets/icon_text_button.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
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
  TextEditingController searchController =TextEditingController();

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
                const SizedBox(height: 100), // Keep spacing to shift row down
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Messages Button
                    IconTextButton(
                      icon: Icons.message,
                      text: 'Messages',
                      isSelected: _isMessageClicked,
                      onTap: () {
                        setState(() {
                          _isMessageClicked = !_isMessageClicked;
                          // Reset likes if message is clicked
                          if (_isMessageClicked) _isLikesClicked = false;
                        });
                      },
                    ),
                    const SizedBox(width: 16), // Spacing between Messages and Likes
                    // Likes Button
                    IconTextButton(
                      icon: Icons.favorite,
                      text: 'Likes',
                      isSelected: _isLikesClicked,
                      onTap: () {
                        setState(() {
                          _isLikesClicked = !_isLikesClicked;
                          // Reset messages if likes is clicked
                          if (_isLikesClicked) _isMessageClicked = false;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustomInput(
                  
                  width: 370,
     height: 38,
                  controller: searchController,type: InputType.email,
                      hintText: 'Search for peoples and chats',hintFontFamily: 'Regular',hintFontSize: 13,
                      keyboardType: TextInputType.emailAddress,
                      borderRadius: 10,
                      prefixIcon: Icon(Icons.search),
                      
                     // suffixIconSvgPath: Iconsax.search_favorite,
                      )
              ],
            ),
          ],
        ),
      ),
    );
  }
}