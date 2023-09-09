import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/utils/app_colors.dart';
import 'package:notes_app/utils/app_layout.dart';
import 'package:notes_app/utils/app_styles.dart';
import 'package:notes_app/utils/notes_info.dart';
import 'package:notes_app/widgets/note_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
          ),
          child: Column(
            children: [
              Container(
                width: size.width,
                height: AppLayout.getHeight(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.logout,
                          size: AppLayout.getHeight(20),
                          color: Colors.white,
                        ),
                        Gap(AppLayout.getWidth(5)),
                        Text('Log out', style: Styles.labelHeading),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.menu,
                          size: AppLayout.getHeight(20),
                          color: Colors.white,
                        ),
                        Gap(AppLayout.getWidth(5)),
                        Text('Text', style: Styles.labelHeading),
                      ],
                    )
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Expanded(
                child: ListView.builder(
                  itemCount: notesList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        NoteTile(
                          titleText: notesList[index][0],
                          date: notesList[index][1],
                        ),
                        Gap(AppLayout.getHeight(10)),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
