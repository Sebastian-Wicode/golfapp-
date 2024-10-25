// sidebar.dart
import 'package:flutter/material.dart';
import 'package:golf_app/components/user_avatar.dart';
import 'package:golf_app/config/app_routes.dart';
import 'package:golf_app/styles/app_text.dart';
import 'package:line_icons/line_icons.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 24, 70, 156), // Color de fondo del header
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserAvatar(size: 90), // Avatar del usuario
                SizedBox(height: 18),
                Text(
                  'Sebastian Jimenez',
                  style: AppText.subtittle1, // Estilo de texto personalizado
                ),
              ],
            ),
          ),
          // Botones después del avatar y nombre
          ListTile(
            leading: Icon(LineIcons.golfBall),
            title: Text('Mi handicap'),
            onTap: () {
              // Acción al presionar Mi handicap
            },
          ),
          ListTile(
            leading: Icon(LineIcons.userFriends),
            title: Text('Mis amigos'),
            onTap: () {
              // Acción al presionar Mis amigos
            },
          ),
          ListTile(
            leading: Icon(LineIcons.users),
            title: Text('Grupos'),
            onTap: () {
              // Acción al presionar Grupos
            },
          ),
          ListTile(
            leading: Icon(LineIcons.playCircle),
            title: Text('Tipos de Juego'),
            onTap: () {
              // Acción al presionar Tipos de Juego
            },
          ),
          ListTile(
            leading: Icon(LineIcons.infoCircle),
            title: Text('Know how'),
            onTap: () {
              // Acción al presionar Know how
            },
          ),
          ListTile(
            leading: Icon(LineIcons.share),
            title: Text('Share app'),
            onTap: () {
              // Acción al presionar Share app
            },
          ),
          Spacer(), // Empuja el siguiente ListTile hacia abajo
          ListTile(
            leading: Icon(LineIcons.fileContract),
            title: Text('Términos y Condiciones'),
            onTap: () {
              // Acción al presionar Términos y Condiciones
              Navigator.of(context).pop(); // Asegúrate de tener la ruta correcta
            },
          ),
        ],
      ),
    );
  }
}
