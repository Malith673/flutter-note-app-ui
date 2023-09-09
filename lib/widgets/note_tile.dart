import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/utils/app_layout.dart';

class NoteTile extends StatefulWidget {
  final String titleText;
  final String date;
  const NoteTile({
    super.key,
    required this.titleText,
    required this.date,
  });

  @override
  State<NoteTile> createState() => _NoteTileState();
}

class _NoteTileState extends State<NoteTile> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    final shortedTitleText = widget.titleText.length > 20
        ? widget.titleText.substring(0, 25) + ' ...'
        : widget.titleText;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(20),
        vertical: AppLayout.getHeight(15),
      ),
      width: size.width,
      height: AppLayout.getHeight(90),
      decoration: BoxDecoration(
          color: Color(0xFF252331), borderRadius: BorderRadius.circular(12)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shortedTitleText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Gap(AppLayout.getHeight(8)),
              Text(
                widget.date,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              )
            ],
          ),
          Positioned(
            right: 10,
            top: 10,
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: AppLayout.getHeight(25),
            ),
          ),
        ],
      ),
    );
  }
}
