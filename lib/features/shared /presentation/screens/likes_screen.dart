import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/features/shared%20/widgets/custom_post_widget.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/buttons/bottom_navbar.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/inputs/app_inputs.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LikesScreen extends StatefulWidget {
  const LikesScreen({super.key});

  @override
  _LikesScreenState createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
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
        child: const SingleChildScrollView(
          child: LikesContent(),
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

// Reusable LikesContent widget so MessageScreen can embed the likes UI.
class LikesContent extends StatefulWidget {
  const LikesContent({super.key});

  @override
  State<LikesContent> createState() => _LikesContentState();
}

class _LikesContentState extends State<LikesContent> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 48),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search input local to LikesContent
              CustomInput(
                controller: _searchController,
                type: InputType.text,
                hintText: 'Search for peoples and likes',
                hintFontFamily: 'Regular',
                hintFontSize: 13,
                borderRadius: 10,
                width: 370,
                height: 48,
                prefixIcon: const Icon(Icons.search, size: 20, color: AppColors.black),
                enableEmoji: false,
                suffixIcon: null,
                suffixIconSvgPath: null,
                sendIcon: null,
                sendIconSvgPath: null,
                validator: (value) => null,
              ),
              const SizedBox(height: 12),
              // Header and badge (Matches / Likes count)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const [
                    Text('Matches', style: TextStyle(fontFamily: 'Regular', fontSize: 20)),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              // Small badge positioned inline with the header
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 6),
                child: CustomPositionedCircle(
                  text: '62',
                  textColor: Colors.white,
                  top: 0,
                  left: 8,
                  width: 30,
                  height: 30,
                ),
              ),
              const SizedBox(height: 12),
              // Likes list
              ...List.generate(
                6,
                (index) => Column(
                  children: [
                    CustomPostWidget(
                      backgroundImage: const AssetImage('assets/images/groupp.png'),
                      titleText: 'Liked by User $index',
                      timeText: 'Just now',
                      timeTextColor: const Color(0xff4285f4),
                      descriptionText: 'They liked your profile',
                      showPositionedCircle: false,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}