import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/core/constants/members.dart';
import 'package:landing_page/core/constants/services.dart';
import 'package:landing_page/core/helpers/figures.dart';
import 'package:landing_page/widgets/about_us/team_members_widget.dart';
import 'package:landing_page/widgets/about_us/techs_slider.dart';
import 'package:landing_page/widgets/common/footer.dart';

class AboutUsWebView extends StatelessWidget {
  const AboutUsWebView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                color: const Color.fromRGBO(27, 44, 214, 1),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.25,
                        right: size.width * 0.25,
                        top: size.height * 0.1,
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Text(
                              "Acerca de Wave Technologies",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: size.width > 1200 ? 80 : 40,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 50),
                            Text(
                              "Diseñamos y creamos experiencias digitales de clase mundial para cualquier pantalla, con las mejores herramientas, enfoques de ingeniería y talento incomparable para obtener resultados consistentes y escalables.",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: size.width > 1200 ? 26 : 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 150),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.1,
                      right: size.width * 0.1,
                      child: Transform.rotate(
                        angle: 8,
                        child: CustomPaint(
                          painter: TriangleFigure(),
                          size: const Size(170, 150),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: size.height * 0.1,
                      right: size.width * 0.1,
                      child: Transform.rotate(
                        angle: 8,
                        child: CustomPaint(
                          painter: CircleFigure(),
                          size: const Size(170, 170),
                        ),
                      ),
                    ),
                    Positioned(
                        top: size.height * 0.1,
                        left: size.width * 0.15,
                        child: CustomPaint(
                          painter: DiamondFigure(),
                          size: const Size(150, 150),
                        )),
                    Positioned(
                      bottom: size.height * 0.1,
                      left: size.width * 0.1,
                      child: CustomPaint(
                        painter: PizzaFigure(),
                        size: const Size(150, 200),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: size.width * 0.3,
                      child: CustomPaint(
                        painter: TowerFigure(),
                        size: const Size(50, 120),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: size.width * 0.3,
                      child: CustomPaint(
                        painter: TowerFigure(),
                        size: const Size(50, 120),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color(0xFFE3F2FD),
                padding: EdgeInsets.symmetric(
                  vertical: 80,
                  horizontal: size.width * 0.1,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        "Misión y Visión de Wave Technologies",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 60,
                        ),
                        minFontSize: 30,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  size: size.width * 0.07,
                                  color: const Color(0xFF1E88E5),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "Misión",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "Desarrollar soluciones de software innovadoras y personalizadas que empoderen a nuestros clientes a alcanzar sus objetivos empresariales. Nos comprometemos a ofrecer productos y servicios de alta calidad mediante el uso de tecnologías avanzadas, un enfoque centrado en el cliente y un equipo de expertos apasionados por la excelencia en cada proyecto.",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 22,
                                    color: Colors.grey[800],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.visibility,
                                  size: size.width * 0.07,
                                  color: const Color(0xFF43A047),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "Visión",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "Ser reconocidos como líderes globales en el desarrollo de software, transformando la manera en que las empresas interactúan con la tecnología. Nuestra visión es crear un impacto positivo en el mundo a través de soluciones tecnológicas revolucionarias que optimicen procesos, fomenten la innovación y mejoren la vida cotidiana de las personas y organizaciones.",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 22,
                                    color: Colors.grey[800],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Sección Equipo
              const SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    "Nuestro equipo de Wave Technologies",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 60,
                    ),
                    minFontSize: 30,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const SizedBox(height: 70),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: TeamMembersWidget(members: waveMembers),
              ),
              const SizedBox(height: 70),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    "Nuestras tecnologías en Wave",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 60,
                    ),
                    minFontSize: 30,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const SizedBox(height: 70),
              TechnologiesShowcase(technologies: waveTechologies),

              const SizedBox(height: 70),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
