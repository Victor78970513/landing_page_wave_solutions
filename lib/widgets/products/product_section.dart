import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/core/helpers/show_dialog_3d.dart';
import 'package:landing_page/widgets/products/products_slider.dart';

class ProductSection extends StatelessWidget {
  final List<String> images;
  final String title;
  final String description;
  final String path3D;
  const ProductSection({
    super.key,
    required this.images,
    required this.title,
    required this.description,
    required this.path3D,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.07),
      child: SizedBox(
        width: size.width,
        height: size.height * 0.5,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: ProductsSlider(images: images),
            ),
            SizedBox(width: size.width * 0.02),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: AutoSizeText(
                      title,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                      minFontSize: 20,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  AutoSizeText(
                    description,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                    minFontSize: 14,
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      showDialog3D(
                        context,
                        path3D,
                      );
                    },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          color: const Color(0xff020f30),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Ver Demostracion 3D",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
