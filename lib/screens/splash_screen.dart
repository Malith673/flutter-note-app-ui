import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/screens/log_in_screen.dart';
import 'package:notes_app/utils/app_colors.dart';
import 'package:notes_app/utils/app_layout.dart';
import 'package:notes_app/utils/app_styles.dart';
import 'package:notes_app/widgets/app_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
          child: Column(children: [
            Gap(AppLayout.getHeight(45)),
            Container(
              height: size.height * 0.44,
              width: size.width,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10,
                    right: 5,
                    child: Container(
                      height: AppLayout.getHeight(300),
                      width: AppLayout.getWidth(400),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/splashScreenImage.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    child: Text(
                      'Welcome to\nOn-note',
                      style: Styles.normalHeading,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'The best solution for notes',
                style: Styles.normalHeading,
              ),
            ),
            Gap(AppLayout.getHeight(5)),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Creating notes and tasks has never been easier',
                style: Styles.labelHeading,
              ),
            ),
            Gap(AppLayout.getHeight(100)),
            const AppButton(
              buttonColor: Color(0xFFeb4e49),
              text: 'Create Account',
            ),
            Gap(AppLayout.getHeight(20)),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LogInScreen(),
                  ),
                );
              },
              child: const AppButton(
                buttonColor: Color(0xFF514f5c),
                text: 'Log in',
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
