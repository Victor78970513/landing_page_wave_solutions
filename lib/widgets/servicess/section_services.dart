import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SectionServices extends StatelessWidget {
  final List<Map<String, dynamic>> services;
  final String svgPath;
  final String subtitle;
  final String lottie;
  final Color backgorundColor;
  final Color checkColor1;
  final Color checkColor2;
  const SectionServices({
    super.key,
    required this.services,
    required this.subtitle,
    required this.lottie,
    required this.backgorundColor,
    required this.checkColor1,
    required this.checkColor2,
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                      fontSize: 35, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  width: double.infinity,
                  child: Lottie.asset(lottie),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: AlignedGridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            itemCount: services.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    services[index]["title"],
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
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
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}

class SectionServiceTitle extends StatelessWidget {
  final String svgPath;
  final String title;
  final Color backgroundColor;
  const SectionServiceTitle({
    super.key,
    required this.svgPath,
    required this.title,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: backgroundColor,
            radius: 70,
            child: SvgPicture.asset(
              svgPath,
              fit: BoxFit.contain,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
          const SizedBox(width: 50),
          Text(
            title,
            style:
                GoogleFonts.poppins(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
