import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/buttons/primary_button.dart';
import 'package:datting_app/shared/widgets/container/custom_container.dart';
import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:datting_app/shared/widgets/inputs/app_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool? isChecked = false;

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
            context.go('/splash');


          },
        ),
        backgroundColor: Colors.transparent, // Make AppBar transparent
        elevation: 0, // Remove shadow
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.radialBackground, // Your gradient
        ),
        child: Stack(
          children: [
            CustomPositionedCircle(top: 42, left: 53, width: 12, height: 12),
            CustomPositionedCircle(top: 72, left: 330, width: 30, height: 30),
            CustomPositionedCircle(top: 354, left: 79, width: 28, height: 28),
            CustomPositionedCircle(top: 649, left: 342, width: 22, height: 22),
            Positioned(
          top: 3,
          left: 20,
          child: SvgPicture.asset('assets/icons/Group 2.svg')),
            Column(
              children: [
                const SizedBox(height:130),
                Center(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 30),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontFamily: 'Bold', fontSize: 30),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 29),
                  child: const Text(
                    "Please enter below the details to continue",
                    style: TextStyle(fontFamily: 'Regular', fontSize: 15),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: CustomInput(
                    controller: emailController,
                    type: InputType.email,
                    hintText: 'Email',
                    hintFontFamily: 'Regular',
                    hintFontSize: 13,
                    keyboardType: TextInputType.emailAddress,
                    borderRadius: 30,
                    prefixIconSvgPath: 'assets/icons/mail.svg',
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: CustomInput(
                    controller: passwordController,
                    type: InputType.password,
                    hintText: 'Password',
                    hintFontFamily: 'Regular',
                    hintFontSize: 13,
                    keyboardType: TextInputType.name,
                    borderRadius: 30,
                    prefixIconSvgPath: 'assets/icons/Frame.svg',
                    prefixIconWidth: 10,
                    prefixIconHeight: 14,
                    suffixIconSvgPath: 'assets/icons/Group 9.svg',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                        fillColor: WidgetStateProperty.resolveWith<Color?>(
                          (Set<WidgetState> states) {
                            if (states.contains(WidgetState.selected)) {
                              return Colors.black;
                            }
                            return AppColors.transparent;
                          },
                        ),
                        checkColor: Colors.white,
                        overlayColor: WidgetStateProperty.all(Colors.grey.withOpacity(0.2)),
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(fontFamily: 'Regular', fontSize: 13),
                      ),
                      const Spacer(),
                      const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontFamily: 'Regular',
                          fontSize: 13,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 170),
                PrimaryButton(
                  width: 343,
                  height: 54,
                  onPressed: () {},
                  label: 'Sign In',
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'or continue with',
                          style: TextStyle(
                            fontFamily: 'Regular',
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomSvgContainer(
                        borderColor: Colors.black,
                        borderWidth: 2,
                        borderRadius: 10,
                        svgPath: 'assets/icons/Vector.svg',
                        svgWidth: 20,
                        svgHeight: 20,
                        size: 44,
                      ),
                      CustomSvgContainer(
                        borderColor: Colors.black,
                        borderWidth: 2,
                        borderRadius: 10,
                        svgPath: 'assets/icons/Group.svg',
                        svgWidth: 20,
                        svgHeight: 20,
                        size: 44,
                      ),
                      CustomSvgContainer(
                        borderColor: Colors.black,
                        borderWidth: 2,
                        borderRadius: 10,
                        svgPath: 'assets/icons/apple.svg',
                        svgWidth: 20,
                        svgHeight: 20,
                        size: 44,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 75),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Don\'t have an account yet ?',
                        style: TextStyle(fontFamily: 'Regular', fontSize: 14),
                      ),
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Bold',
                          color: AppColors.primary,
                          fontSize: 15,
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