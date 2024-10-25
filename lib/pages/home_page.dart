import 'package:flutter/material.dart';
import 'package:golf_app/components/post_item.dart';
import 'package:golf_app/components/toolbar.dart';
import 'package:golf_app/config/app_routes.dart';
import 'package:golf_app/styles/app_colors.dart';
import 'package:golf_app/styles/app_text.dart';
import 'package:golf_app/widgets/side_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  
    HomePage({super.key});

    List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return  Scaffold(
      appBar: Toolbar(
        actions: [
          IconButton(
            icon: Icon(LineIcons.bars),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Abre el sidebar
            },
          ),
        ],
        title: 'Golf app', 
      ),
    
       body:Padding(
        padding: const EdgeInsets.all(16.0), // Añadimos padding para espacio alrededor
        child: ListView.separated(
          itemBuilder: (context, index) {
            return PostItem(
              user: users[index],
            );
          },
          itemCount: users.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 15,
            );
          },
        ),
      ),
    );
  }
  
    mockUsersFromServer(){
      for (var i = 0; i < 20; i++){
        users.add('User number $i');
      }
    }
}