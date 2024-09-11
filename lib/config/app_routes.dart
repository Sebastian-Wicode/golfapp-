
import 'package:golf_app/pages/edit_porfile_page.dart';
import 'package:golf_app/pages/home_page.dart';
import 'package:golf_app/pages/log_in.dart';
import 'package:golf_app/pages/main_page.dart';

class Approutes {

  static final pages = {
        '/' :(context) => LoginPage(),
        '/home':(context) => HomePage(),
        '/main':(context) => MainPage(),
        '/edit_porfile':(context) => EditPorfilePage(),
      };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}