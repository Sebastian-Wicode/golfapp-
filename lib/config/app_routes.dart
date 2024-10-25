


import 'package:golf_app/pages/Scores.dart';
import 'package:golf_app/pages/edit_porfile_page.dart';
import 'package:golf_app/pages/home_page.dart';
import 'package:golf_app/pages/log_in.dart';
import 'package:golf_app/pages/main_page.dart';
import 'package:golf_app/pages/map.dart';
import 'package:golf_app/widgets/popupplay.dart';

class Approutes {

  static final pages = {
        login :(context) => LoginPage(),
        home :(context) => HomePage(),
        main:(context) => MainPage(),
        editProfile:(context) => EditPorfilePage(),
        nearby: (context) =>  NearbyPage(),
        play: (context) => PopupPlay(),
        scores: (context) => ScoresGroupPage()
      };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const play = '/Play';
  static const scores = '/Scores';
}