import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/utils/app_colors.dart';
import 'package:notes_app/utils/app_layout.dart';
import 'package:notes_app/utils/app_styles.dart';
import 'package:notes_app/widgets/app_button.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.mainColor,
        body: Column(
          children: [
            Container(
              height: size.height * 0.35,
              width: size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF312D3C),
                    Color(0xFF4A4956),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Gap(AppLayout.getHeight(20)),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/bulbPhoto.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Text(
                      'On-Note',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Text(
              'Welcome Back!',
              style: Styles.normalHeading,
            ),
            Gap(AppLayout.getHeight(3)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account?",
                  style: Styles.labelHeading.copyWith(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 139, 137, 150)),
                ),
                Text(
                  " Sign Up",
                  style: Styles.labelHeading.copyWith(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 239, 59, 35),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Gap(AppLayout.getHeight(50)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Your e-mail',
                  style: Styles.labelHeading.copyWith(
                    color: const Color(0xFF939296),
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(5)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF252331),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xFF808083),
                      width: 2,
                    )),
                child: TextField(
                  style: const TextStyle(
                    color: Color(0xFF808083),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(15)),
                    hintStyle: const TextStyle(
                      color: Color(0xFF808083),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Password',
                  style: Styles.labelHeading.copyWith(
                    color: const Color(0xFF939296),
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(5)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF252331),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFF808083),
                      width: 2,
                    )),
                child: TextField(
                  style: const TextStyle(
                    color: Color(0xFF808083),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(15)),
                    hintStyle: const TextStyle(
                      color: Color(0xFF808083),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(
                        () {
                          isChecked = value!;
                        },
                      );
                    },
                  ),
                  Text(
                    'Remember Me',
                    style: Styles.labelHeading,
                  ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child: const AppButton(
                buttonColor: Color(0xFFeb4e49),
                text: 'Sign up',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
