import 'package:flutter/material.dart';
import 'package:golf_app/components/toolbar.dart';
import 'package:golf_app/components/user_avatar.dart';
import 'package:golf_app/styles/app_text.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

 enum PorfileMenu { edit, logout}

class PorfilePage extends StatelessWidget {
  const PorfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
      actions: [
        PopupMenuButton<PorfileMenu>(
          onSelected: (value) {
            switch(value) {
             case PorfileMenu.edit:
             Navigator.of(context).pushNamed('/edit_porfile');
             break; 
             case PorfileMenu.logout:
             print('Log out');
             break;
            }
          },
          icon: const Icon(Icons.more_vert_rounded),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text('Edit'),
                value: PorfileMenu.edit,
                ),
                PopupMenuItem(
                child: Text('Edit'),
                value: PorfileMenu.logout,
                ),
            ];
          },
        )
      ],
      ),
      body: Column(
        children: [
          UserAvatar(
            size: 90,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Sebastian Jimenez',
          style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Mexico',
          style: AppText.subtittle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '10',
                    style: AppText.header2,
                  ),
                  Text(
                    'Handicap'
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '150',
                    style: AppText.header2,
                  ),
                  Text(
                    'Rounds Played'
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '95%',
                    style: AppText.header2,
                  ),
                  Text(
                    'Attested'
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 2,
            height: 30,
             ),
        ],
      ),
    );
  }
}