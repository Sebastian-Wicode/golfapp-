import 'package:flutter/material.dart';
import 'package:golf_app/components/post_item.dart';
import 'package:golf_app/components/toolbar.dart';
import 'package:golf_app/styles/app_colors.dart';
import 'package:golf_app/styles/app_text.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  
    HomePage({super.key});

List<String> users = [];
  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return  Scaffold(
      appBar: Toolbar(title: 'Golf app', 
      actions: [IconButton(onPressed: (){},
       icon: Icon(LineIcons.bars),
      ),
        ],
      ),
       body: ListView.separated(
        itemBuilder: (context, index){
              return PostItem(
                user: users[index],
                );
       },
       itemCount: users.length,
       separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 15
          );
       },
       ),
       );

  }
  
    mockUsersFromServer(){
      for (var i = 0; i < 20; i++){
        users.add('User number $i');
      }
    }
}