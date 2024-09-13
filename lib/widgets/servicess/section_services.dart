import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionServices extends StatelessWidget {
  final List<Map<String, dynamic>> services;
  final String svgPath;
  final String subtitle;
  final Color backgorundColor;
  final Color checkColor1;
  final Color checkColor2;
  const SectionServices({
    super.key,
    required this.services,
    required this.subtitle,
    required this.backgorundColor,
    required this.checkColor1,
    required this.checkColor2,
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: backgorundColor,
                radius: 70,
                child: SvgPicture.asset(
                  svgPath,
                  fit: BoxFit.contain,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                      fontSize: 35, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
            ),
            shrinkWrap: true,
            itemCount: services.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(services[index]["title"],
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        )),
                    const SizedBox(height: 10),
                    for (String service in services[index]["items"])
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: checkColor1,
                              child: Icon(Icons.check, color: checkColor2),
                            ),
                            const SizedBox(width: 20),
                            Flexible(
                              child: Text(
                                service,
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
