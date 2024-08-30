import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/core/routes/router.dart';
import 'package:landing_page/pages/about_us_page.dart';
import 'package:landing_page/pages/contact_page.dart';
import 'package:landing_page/pages/home_page.dart';
import 'package:landing_page/pages/products_page.dart';
import 'package:landing_page/pages/services_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.1),
              child: InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {},
                child: ResponsiveBreakpoints.of(context).isMobile ||
                        ResponsiveBreakpoints.of(context).isTablet
                    ? GestureDetector(
                        onTap: () {
                          WaveRouter.goRouter.go(HomePage.name);
                        },
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.13,
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: SvgPicture.asset("assets/logos/logo_wave.svg"),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          WaveRouter.goRouter.go(HomePage.name);
                        },
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.13,
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child:
                              SvgPicture.asset("assets/logos/second_logo.svg"),
                        ),
                      ),
              ),
            ),
            if (ResponsiveBreakpoints.of(context).isMobile ||
                ResponsiveBreakpoints.of(context).isTablet) ...[
              const Spacer(),
              Transform.translate(
                offset: const Offset(-10, 0),
                child: IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {},
                ),
              )
            ] else
              Flexible(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: const Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      _HeaderItem(
                        title: "SERVICIOS",
                        path: ServicesPage.name,
                      ),
                      _HeaderItem(
                        title: "SOBRE NOSOTROS",
                        path: AboutUsPage.name,
                      ),
                      _HeaderItem(
                        title: "PRODUCTOS",
                        path: ProductsPage.name,
                      ),
                      _SpecialHeaderItem(
                        title: "CONTACTENOS",
                        path: ContactPage.name,
                      )
                    ],
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class _HeaderItem extends StatefulWidget {
  final String title;
  final String path;
  const _HeaderItem({required this.title, required this.path});

  @override
  State<_HeaderItem> createState() => _HeaderItemState();
}

class _HeaderItemState extends State<_HeaderItem> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextButton(
          onPressed: () {
            WaveRouter.goRouter.go(widget.path);
          },
          child: AutoSizeText(
            widget.title,
            style: GoogleFonts.poppins(
              color: isHovered
                  ? const Color.fromRGBO(45, 71, 214, 1)
                  : Colors.white,
              fontWeight: FontWeight.w600,
            ),
            maxFontSize: 50,
            minFontSize: 25,
          ),
        ),
      ),
    );
  }
}

class _SpecialHeaderItem extends StatelessWidget {
  final String title;
  final String path;
  const _SpecialHeaderItem({required this.title, required this.path});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        WaveRouter.goRouter.go(path);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 30),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(45, 71, 214, 1),
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: AutoSizeText(
            maxFontSize: 50,
            minFontSize: 25,
            title,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
