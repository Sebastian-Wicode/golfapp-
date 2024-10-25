import 'package:flutter/material.dart';
import 'package:golf_app/styles/app_colors.dart';
import 'package:golf_app/styles/app_text.dart';
import 'package:golf_app/widgets/Prestent_hole.dart';
import 'package:line_icons/line_icons.dart';

class ToolbarGame extends StatelessWidget implements PreferredSizeWidget {
   final List<Widget>? actions;
  const ToolbarGame({super.key, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.background,
        title: PresentHole(),
       actions: actions
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
