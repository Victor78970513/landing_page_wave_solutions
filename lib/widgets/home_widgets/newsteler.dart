import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsTelerWidget extends StatelessWidget {
  const NewsTelerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.2,
        right: size.width * 0.2,
        bottom: size.height * 0.1,
      ),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: const Color(0xFF0A0E27),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.25,
              child: const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Texto principal
                    Text(
                      "Suscríbete a nuestro boletín",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10), // Espaciado
                    // Subtexto
                    Text(
                      '''Suscríbete y recibe muy buenos comentarios de nuestros expertos de desarrolladores directamente en tu bandeja de entrada.''',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 30), // Espaciado entre columnas
            // Columna derecha con TextFormFields
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Formulario con Row para campos de nombre y apellido
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.13,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Nombre",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Espaciado entre campos
                    SizedBox(
                      width: size.width * 0.13,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Apellido",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10), // Espaciado
                // Campo de email
                SizedBox(
                  width: size.width * 0.2,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Correo electronico",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Espaciado
                // Botón de subscribe
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color(0xFF4A55E2),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Subscribete",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
