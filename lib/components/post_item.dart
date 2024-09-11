import 'package:flutter/material.dart';
import 'package:golf_app/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
                      Image.asset(
                        'assets/images/gb.jpg',
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                      width: 16,            
                    ), 
                    Text(
                    user, 
                    style: AppText.subtittle3,
                    ),
                    ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('assets/images/segurosmty.jpg'),
          SizedBox(
            height: 12,
          ),
          Text('data', style: AppText.subtittle3,)
        ],
      ),
    );
  }
}