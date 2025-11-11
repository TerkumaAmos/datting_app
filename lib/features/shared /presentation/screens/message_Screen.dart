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
import 'package:datting_app/features/shared /presentation/screens/likes_screen.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  TextEditingController searchController = TextEditingController();
  bool _isMessageClicked = true;
  bool _isLikesClicked = false;

  @override
  void initState() {
    super.initState();
    // If someone navigates to /messages?tab=likes we should show Likes tab
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final tab = Uri.base.queryParameters['tab'];
      if (tab == 'likes') {
        setState(() {
          _isLikesClicked = true;
          _isMessageClicked = false;
        });
      }
    });
  }

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
                            _isMessageClicked = true;
                            _isLikesClicked = false;
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
                            _isLikesClicked = true;
                            _isMessageClicked = false;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Show search input only when Messages tab is active.
                  if (_isMessageClicked)
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
                  if (!_isMessageClicked) const SizedBox(height: 0),
                  const SizedBox(height: 20),
                  // Header and badge
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          _isLikesClicked ? 'Likes' : 'Messages',
                          style: const TextStyle(fontFamily: 'Regular', fontSize: 20),
                        ),
                        const SizedBox(width: 10),
                        if (_isMessageClicked)
                          CustomPositionedCircle(
                            text: '12',
                            textColor: Colors.white,
                            top: 5,
                            left: 8,
                            width: 30,
                            height: 30,
                          )
                        else
                          CustomPositionedCircle(
                            text: '62',
                            textColor: Colors.white,
                            top: 5,
                            left: 8,
                            width: 30,
                            height: 30,
                          ),
                      ],
                    ),
                  ),

                  // Content area: show messages or likes based on state
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: _isLikesClicked
                        ? const LikesContent()
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              8,
                              (index) => Column(
                                children: [
                                  CustomPostWidget(
                                    backgroundImage: const AssetImage('assets/images/groupp.png'),
                                    titleText: 'T.E.C.H_uma',
                                    timeText: '5 min ago',
                                    timeTextColor: const Color(0xff4285f4),
                                    descriptionText: 'Awesome what kind of stuff do you...',
                                    showPositionedCircle: true,
                                    circleText: '03',
                                    circleColor: Colors.blue,
                                    circleTextColor: Colors.white,
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: 2, // Messages tab
        onItemTapped: (index) {
          switch (index) {
            case 0:
              context.go('/home');
              break;
            case 1:
              context.go('/matches');
              break;
            case 2:
              context.go('/messages');
              break;
            case 3:
              context.go('/appSettings2');
              break;
          }
        },
      ),
    );
  }
}