import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/core/constants/social_networks.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    const textStyle = TextStyle(color: Colors.white, fontSize: 24);
    return Container(
      width: size.width,
      color: const Color(0xff011030),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/logos/second_logo.svg",
                  height: size.height * 0.15,
                  width: size.width * 0.2,
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    margin: const EdgeInsets.only(right: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: AutoSizeText(
                        maxFontSize: 50,
                        minFontSize: 25,
                        "Hablemos",
                        style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(45, 71, 214, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                const Text(
                  '''© Wave Technologies LLC 
• Todos Los Derechos Reservados • Política De Privacidad''',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text("Inicio", style: textStyle),
                const SizedBox(height: 10),
                const Text("Servicios", style: textStyle),
                const SizedBox(height: 10),
                const Text("Productos", style: textStyle),
                const SizedBox(height: 10),
                const Text("Sobre Nosotros", style: textStyle),
                const SizedBox(height: 10),
                const SizedBox(height: 80),
                Row(
                  children: List.generate(socialNetworks.length, (index) {
                    final socialNetwork = socialNetworks[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        height: MediaQuery.sizeOf(context).width * 0.02,
                        width: MediaQuery.sizeOf(context).width * 0.02,
                        child: SvgPicture.asset(
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                          socialNetwork,
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 100),
              ],
            )
          ],
        ),
      ),
    );
  }
}
