import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/widgets/common/footer.dart';

final List<String> options = [
  "Consultoría de Flutter, Evaluación de código, Capacitación y Soporte de equipo",
  "Ingeniería de Producto",
  "Diseño y desarrollo de productos",
  "Modernización, estrategia tecnológica y replantamiento",
  "Ayuda para productos de startups",
];
List<bool> isChecked = List.generate(options.length, (index) => false);

class ContactWebView extends StatefulWidget {
  const ContactWebView({super.key});

  @override
  State<ContactWebView> createState() => _ContactWebViewState();
}

class _ContactWebViewState extends State<ContactWebView> {
  bool notifications = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Text(
                    "¿Cómo podemos ayudarte hoy?",
                    style: GoogleFonts.poppins(
                      fontSize: size.width > 600 ? 50 : 24,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF222222),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "¡Estamos emocionados de saber más sobre su proyecto!",
                    style: GoogleFonts.poppins(
                      fontSize: size.width > 600 ? 22 : 16,
                      color: const Color(0xFF666666),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Nombre*",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Apellido*",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Correo Electronico*",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Nombre de empresa*",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: "Cargo",
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(
                          value: "Developer", child: Text("Desarrollador")),
                      DropdownMenuItem(
                          value: "Designer", child: Text("Diseñador")),
                      DropdownMenuItem(
                          value: "Manager", child: Text("Gerente")),
                      DropdownMenuItem(value: "Other", child: Text("Otro")),
                    ],
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Elige el tema en el que deseas que te ayudemos",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: const Color(0xFF222222),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: options.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        title: Text(
                          options[index],
                          style: GoogleFonts.poppins(fontSize: 20),
                        ),
                        value: isChecked[index],
                        onChanged: (newValue) {
                          setState(() {
                            if (newValue! == true) {
                              isChecked[index] = true;
                            } else {
                              isChecked[index] = false;
                            }
                          });
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText:
                          "Cuéntanos más sobre tu proyecto y el impacto deseado de nuestra colaboración*",
                      labelStyle: GoogleFonts.poppins(fontSize: 20),
                      border: const OutlineInputBorder(),
                    ),
                    maxLines: 4,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: notifications,
                        onChanged: (newValue) {
                          setState(() {});
                          if (newValue! == true) {
                            notifications = true;
                          } else {
                            notifications = false;
                          }
                        },
                      ),
                      Text(
                        "Acepto recibir otras comunicaciones",
                        style: GoogleFonts.poppins(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        backgroundColor: const Color(0xFF2962FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Enviar Formulario",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
