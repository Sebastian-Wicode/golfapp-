import 'package:flutter/material.dart';
import 'package:golf_app/styles/app_colors.dart';
import 'package:golf_app/styles/app_text.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const Toolbar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.background,
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(title,
          style: AppText.header1,),
        ),
        actions: actions
       );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
