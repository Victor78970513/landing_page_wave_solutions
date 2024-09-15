// import 'dart:ui_web' as ui;
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/core/constants/services.dart';
import 'package:landing_page/widgets/common/footer.dart';
import 'package:landing_page/widgets/servicess/section_services.dart';
// import 'dart:html';

class ServicesWebView extends StatelessWidget {
  const ServicesWebView({super.key});

  @override
  Widget build(BuildContext context) {
    for (var svgAsset in appServicesSvgs) {
      final loader = SvgAssetLoader(svgAsset);
      svg.cache
          .putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    }
    final size = MediaQuery.sizeOf(context);
    // const Widget iframeWidget = HtmlElementView(
    //   viewType: 'iframeElement',
    // );

    // Widget _iframeWidget = Container();
    // final IFrameElement _iFrameElement = IFrameElement();

    // @override
    // void initState() {
    //   _iFrameElement.style.height = '100%';
    //   _iFrameElement.style.width = '100%';
    //   _iFrameElement.src =
    //       'https://my.spline.design/animatedmockupiphone14pro-5f38ee5aa20101dfe76e435780923904/';

    //   _iFrameElement.style.border = 'none';
    //   // ignore: undefined_prefixed_name
    //   ui.platformViewRegistry.registerViewFactory(
    //     'iframeElement',
    //     (int viewId) => _iFrameElement,
    //   );
    //   _iframeWidget = HtmlElementView(
    //     key: UniqueKey(),
    //     viewType: 'iframeElement',
    //   );

    //   super.initState();
    // }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    AutoSizeText(
                      "Nuestros servicios y experiencia",
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(45, 71, 214, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                      minFontSize: 30,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    AutoSizeText(
                      "Desarrollo de",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 100,
                      ),
                      minFontSize: 30,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    AutoSizeText(
                      "aplicaciones Flutter",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 100,
                      ),
                      minFontSize: 30,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 40),
                    Container(
                      margin: const EdgeInsets.only(right: 30),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(45, 71, 214, 1),
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: AutoSizeText(
                          maxFontSize: 50,
                          minFontSize: 25,
                          "Empecemos",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: size.width * 0.13),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         border: Border.all(color: Colors.black, width: 5)),
                    //     width: size.width,
                    //     height: 600,
                    //     child: Stack(
                    //       children: [
                    //         _iframeWidget,
                    //         Positioned(
                    //             bottom: 0,
                    //             child: Container(
                    //                 color: Colors.red,
                    //                 height: 50,
                    //                 width: size.width * 2))
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Text(
                      "Somos líderes mundiales en Flutter y expertos en desarrollo de aplicaciones. Nuestro equipo tiene todo lo necesario para diseñar, crear, implementar y tener éxito con aplicaciones para cualquier pantalla. Como la consultora de desarrollo de Flutter con más experiencia, siempre superamos a la competencia.",
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SectionServiceTitle(
                      svgPath: "assets/icons/flutter_service.svg",
                      title: "Servicios de desarrollo de aplicaciones",
                      backgroundColor: Color.fromRGBO(31, 44, 215, 1),
                    ),
                    SectionServices(
                      services: appServicesJson,
                      svgPath: "assets/icons/flutter_service.svg",
                      lottie: "assets/icons/flutterfire.json",
                      subtitle:
                          "Flutter es la solución para el desarrollo de aplicaciones modernas.",
                      backgorundColor: const Color.fromRGBO(31, 44, 215, 1),
                      checkColor1: const Color.fromRGBO(229, 235, 254, 1),
                      checkColor2: const Color.fromRGBO(31, 44, 215, 1),
                    ),
                    const SectionServiceTitle(
                        svgPath: "assets/icons/design_service.svg",
                        title: "Diseño y estrategia de producto",
                        backgroundColor: Color.fromRGBO(252, 49, 139, 1)),
                    SectionServices(
                      services: designServicesJson,
                      svgPath: "assets/icons/design_service.svg",
                      lottie: "assets/icons/design_lottie.json",
                      subtitle:
                          "Diseñar soluciones con gestión estratégica de productos.",
                      backgorundColor: const Color.fromRGBO(252, 49, 139, 1),
                      checkColor1: const Color.fromRGBO(255, 232, 243, 1),
                      checkColor2: const Color.fromRGBO(252, 49, 139, 1),
                    ),
                    const SectionServiceTitle(
                        svgPath: "assets/icons/performance_service.svg",
                        title: "Rendimiento y crecimiento",
                        backgroundColor: Color.fromRGBO(253, 180, 8, 1)),
                    SectionServices(
                      services: performanceServicesJson,
                      svgPath: "assets/icons/performance_service.svg",
                      lottie: "assets/icons/growth_lottie.json",
                      subtitle:
                          "Análisis, rendimiento de aplicaciones, crecimiento y gestión de tiendas de aplicaciones.",
                      backgorundColor: const Color.fromRGBO(253, 180, 8, 1),
                      checkColor1: const Color.fromRGBO(255, 248, 230, 1),
                      checkColor2: const Color.fromRGBO(253, 180, 8, 1),
                    ),
                    const SizedBox(height: 70),
                  ],
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
