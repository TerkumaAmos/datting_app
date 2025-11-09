import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/features/shared%20/presentation/widgets/icon_text_button.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/buttons/bottom_navbar.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:datting_app/shared/widgets/inputs/app_inputs.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LikesScreen extends StatefulWidget {
  const LikesScreen({super.key});

  @override
  _LikesScreenState createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
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
                        isSelected: GoRouterState.of(context).uri.toString() == '/messages',
                        onTap: () {
                          context.go('/messages');
                        },
                      ),
                      const SizedBox(width: 16),
                      IconTextButton(
                        icon: Icons.favorite,
                        text: 'Likes',
                        isSelected: GoRouterState.of(context).uri.toString() == '/likes',
                        onTap: () {
                          context.go('/likes');
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomInput(
                    width: 370,
                    height: 48,
                    controller: searchController,
                    type: InputType.text,
                    hintText: 'Search for peoples and likes',
                    hintFontFamily: 'Regular',
                    hintFontSize: 13,
                    keyboardType: TextInputType.text,
                    borderRadius: 10,
                    prefixIcon: const Icon(Icons.search, size: 20, color: AppColors.black),
                    validator: (value) => null,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const Text('Matches', style: TextStyle(fontFamily: 'Regular', fontSize: 20)),
                        const SizedBox(width: 10),
                        CustomPositionedCircle(
                          text: '62',
                          textColor: Colors.white,
                          top: 5,
                          left: 100,
                          width: 30,
                          height: 30,
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
        selectedIndex: 2,
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