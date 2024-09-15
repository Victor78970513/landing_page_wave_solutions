import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/core/constants/product_images.dart';
import 'package:landing_page/widgets/common/footer.dart';
import 'package:landing_page/widgets/products/product_section.dart';

class ProductsWebView extends StatelessWidget {
  const ProductsWebView({super.key});

  @override
  Widget build(BuildContext context) {
    for (var pngAsset in jayaniImages) {
      final image = AssetImage(pngAsset);
      precacheImage(image, context);
    }
    for (var pngAsset in asapImages) {
      final image = AssetImage(pngAsset);
      precacheImage(image, context);
    }
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(195, 210, 250, 1),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.15),
                    AutoSizeText(
                      "Productos con éxito de Wave Technologies",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 100,
                      ),
                      minFontSize: 30,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.04,
                        right: size.width * 0.2,
                      ),
                      child: AutoSizeText(
                        "Diseñamos y construimos experiencias digitales de primer nivel para cualquier pantalla, con las mejores herramientas y enfoques de ingeniería para lograr resultados consistentes y escalables. Descubra cómo VGV lo ayuda a lograrlo.",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    ProductSection(
                      images: jayaniImages,
                      title: "Jayani Power: Tu entrenador personal de IA",
                      description:
                          "Jayani Power es la primera app de fitness que utiliza inteligencia artificial para crear rutinas de entrenamiento y planes de alimentación personalizados. ¡Alcanza tus objetivos de forma más rápida y eficiente sin salir de casa! Con Jayani Power, la inteligencia artificial se adapta a tus necesidades y preferencias para ofrecerte un entrenamiento completamente personalizado. ¡Descubre el poder de la IA en tu bolsillo!",
                      path3D:
                          'https://my.spline.design/videomockupiphone15-5540adbcb13e4e1f5dd01b6a00769ff8/',
                    ),
                    ProductSection(
                      images: asapImages,
                      title: "ASAP: Tu súper app para todo",
                      description:
                          "ASAP es tu app de delivery todo en uno. Pide comida de tus restaurantes favoritos, medicamentos en tu farmacia preferida o cualquier otro producto que necesites, y recíbelo en minutos. ¡La solución rápida y fácil para tu día a día! ASAP te conecta con una amplia red de comercios para que puedas pedir lo que quieras, cuando quieras y donde quieras. ¡Comida, farmacia, y mucho más, todo en una sola app!",
                      path3D:
                          "https://my.spline.design/videomockupiphone15-c44a92cb80b9f1349082056b466200b9/",
                    ),
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
