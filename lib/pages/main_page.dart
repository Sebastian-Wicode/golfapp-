import 'package:flutter/material.dart';
import 'package:golf_app/components/costum_navigation_item.dart';
import 'package:golf_app/pages/home_page.dart';
import 'package:golf_app/pages/porfile_page.dart';
import 'package:line_icons/line_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: pages[currentIndex.index],
      bottomNavigationBar: Mybottomnavigation( 
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },),
     );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('Stats'),
    ),
    Center(
      child: Text('Play'),
    ),
    Center(
      child: Text('Actividad'),
    ),
    Center(
      child: PorfilePage(),
    ),
  ];
}
enum Menus{
  home,
  stats, 
  play,
  activity,
  profile
}
class Mybottomnavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const Mybottomnavigation({super.key, required this.currentIndex, required this.onTap});

    @override
  Widget build(BuildContext context) {
    return Container(         
          height: 87,
          margin: EdgeInsets.all(24),
           child: Stack(
          children: [
             Positioned(
              top: 17,
              right: 0,
              left: 0,
               child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Row(
                  children: [
                    Expanded(child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.home), 
                      icon: LineIcons.home,
                      current: currentIndex,
                      name: Menus.home,
                    )),
                    Expanded(
                        child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.stats), 
                      icon: LineIcons.chalkboard,
                      current: currentIndex,
                      name: Menus.stats,
                    )
                    ),
                    Spacer(),
                    Expanded(
                      child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.activity), 
                      icon: LineIcons.trophy,
                      current: currentIndex,
                      name: Menus.activity,
                    )
                    ),
                    Expanded(
                      child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.profile), 
                      icon: LineIcons.userAlt,
                      current: currentIndex,
                      name: Menus.profile,
                    )
                    ),
                  ],
                ),
               ),
             ),
             Positioned(
              right: 0,
              left: 0,
              top: 0,
              child: GestureDetector(
                onTap: () => onTap(Menus.play), 
                child: Container(
                  width: 64,
                  height: 64,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    
                  ),
                  child: Icon(LineIcons.golfBall),),
                      
                ),
              ), 
             ]
        ),
    );
}
}
