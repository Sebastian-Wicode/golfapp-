import 'package:flutter/material.dart';
import 'package:golf_app/pages/scores.dart';

class PopupPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white, // Fondo blanco para el pop-up
      title: Center(
        child: Text(
          'Configure ronda',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Color negro para el título
                      ),
                    ),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
              'el Bosque',
              textAlign: TextAlign.center, // Para asegurarte que el texto esté centrado
              style: TextStyle(
                decoration: TextDecoration.underline, // Subraya el texto
                fontSize: 16,
                color: Colors.black, // Color negro para el nombre del club
                decorationThickness: 2.0, // Opcional: Aumenta el grosor del subrayado
                decorationColor: Colors.black, // Color del subrayado
              ),
            ),

          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ScoresGroupPage()),
                ); // Navega a ScoresGroupPage()
              },
              child: Text('Iniciar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Color de fondo
                foregroundColor: Colors.white, // Color de las letras
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Bordes redondeados de 10 px
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 26.0), // Padding de 20 px arriba y abajo
              ),
            ),

          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el diálogo
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300], // Color gris claro para el botón
                foregroundColor: Colors.black, // Letras negras
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Bordes redondeados de 10 px
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0), // Padding de 10 px top y bottom
              ),
              child: SizedBox(
                width: double.infinity, // El botón ocupará todo el ancho posible
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Ajusta el tamaño del botón al contenido
                  mainAxisAlignment: MainAxisAlignment.center, // Centra el texto y el icono
                  children: [
                    Icon(
                      Icons.settings, // Ícono de tuerca
                      size: 18, // Tamaño del ícono
                    ),
                    SizedBox(width: 8), // Espacio entre el ícono y el texto
                    Text('Configuración'),
                  ],
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el diálogo
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300], // Color gris claro para el botón
                foregroundColor: Colors.black, // Letras blancas
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Bordes redondeados de 10 px
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0), // Padding de 10 px top y bottom
              ),
              child: SizedBox(
                width: double.infinity, // El botón ocupará todo el ancho posible
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Ajusta el tamaño del botón al contenido
                  mainAxisAlignment: MainAxisAlignment.center, // Centra el texto y el icono
                  children: [
                    Icon(
                      Icons.group, // Ícono de tres personas (grupo)
                      size: 18, // Tamaño del ícono
                    ),
                    SizedBox(width: 8), // Espacio entre el ícono y el texto
                    Text('Agregar a grupo'),
                  ],
                ),
              ),
            ),

        ],
      ),
    );
  }
}
