import 'package:flutter/material.dart';
import 'package:golf_app/components/toolbar_game.dart';
import 'package:golf_app/components/user_avatar.dart';
import 'package:golf_app/config/app_routes.dart';
import 'package:golf_app/styles/app_text.dart'; // Asegúrate de que el archivo y el nombre sean correctos

import 'package:golf_app/widgets/side_bar_Game.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class ScoresGroupPage extends StatelessWidget {
  const ScoresGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarGame(
      ),
      endDrawer: SidebarGame1(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Asegúrate de que el nombre del widget coincida con el importado
        ],
      ),
    );
  }
}
