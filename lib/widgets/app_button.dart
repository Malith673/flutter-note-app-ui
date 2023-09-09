import 'package:flutter/material.dart';
import 'package:notes_app/utils/app_layout.dart';
import 'package:notes_app/utils/app_styles.dart';

class AppButton extends StatefulWidget {
  final String text;
  final Color buttonColor;
  const AppButton({super.key, required this.buttonColor, required this.text});

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
      child: Container(
        height: 50,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.buttonColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(0, 1),
              blurRadius: 1,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Center(
          child: Text(
            widget.text,
            style: Styles.labelHeading.copyWith(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
