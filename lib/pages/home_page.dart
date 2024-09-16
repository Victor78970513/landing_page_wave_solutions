import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/widgets/common/footer.dart';
import 'package:landing_page/widgets/home_widgets/clients.dart';
import 'package:landing_page/widgets/home_widgets/home_chips.dart';
import 'package:landing_page/widgets/home_widgets/newsteler.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:rive/rive.dart';

class HomePage extends StatelessWidget {
  static const name = '/';
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.15),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.13),
                    child: Text(
                      "Wave Technologies, equipo, y resultados.",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: size.width > 1200 ? 100 : 40,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width * 0.6,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.13,
                                top: size.height * 0.08,
                              ),
                              child: Text(
                                "Diseñamos y construimos experiencias digitales de primer nivel para cualquier pantalla, con las mejores herramientas y enfoques de ingeniería para lograr resultados consistentes y escalables. Descubra cómo VGV lo ayuda a lograrlo.",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                            Padding(
                              padding: EdgeInsets.only(left: size.width * 0.13),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Wrap(
                                  children: [
                                    HomeChips(
                                      label: "Nuestros Servicios",
                                      backGroundColor:
                                          Color.fromRGBO(45, 71, 214, 1),
                                    ),
                                    SizedBox(width: 50),
                                    HomeChips(
                                      label: "Contactanos",
                                      borderColor:
                                          Color.fromRGBO(45, 71, 214, 1),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      if (ResponsiveBreakpoints.of(context).isDesktop)
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            width: size.width * 0.4,
                            child: SvgPicture.asset(
                              "assets/logos/formas_image.svg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    color: const Color.fromRGBO(45, 71, 214, 1),
                    child: const ClientsWidget(),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Positioned(
                          top: size.height * 0.15,
                          right: 10,
                          child: SizedBox(
                            width: size.width * 0.35,
                            height: size.height * 0.4,
                            child: FutureBuilder(
                                future: Future.delayed(
                                    const Duration(milliseconds: 500)),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return Container();
                                  } else {
                                    return const RiveAnimation.asset(
                                      "assets/rive/flutterdash.riv",
                                      fit: BoxFit.fill,
                                    );
                                  }
                                }),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.1,
                                right: size.width * 0.3,
                                top: size.height * 0.1,
                                bottom: size.height * 0.1,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Wave technologies trabaja con marcas globales para diseñar, crear y escalar aplicaciones exitosas, y somos el número uno en desarrollo multiplataforma.",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontSize: size.width > 1200 ? 50 : 30),
                                  ),
                                  const SizedBox(height: 30),
                                  Text(
                                    "Hacemos más con los recursos disponibles, llegamos a cualquier pantalla desde una única base de código e implementamos las mejores prácticas para el crecimiento a largo plazo",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: size.width > 1200 ? 24 : 14),
                                  ),
                                  const SizedBox(height: 30),
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: HomeChips(
                                      label: "Explora nuestros Servicios",
                                      backGroundColor:
                                          Color.fromRGBO(45, 71, 214, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const NewsTelerWidget(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
