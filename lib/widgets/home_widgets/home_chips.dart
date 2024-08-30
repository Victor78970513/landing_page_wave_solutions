import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeChips extends StatefulWidget {
  final String label;
  final Color? backGroundColor;
  final Color? borderColor;
  final bool? hasHover;
  const HomeChips({
    super.key,
    required this.label,
    this.backGroundColor,
    this.borderColor,
    this.hasHover = false,
  });

  @override
  State<HomeChips> createState() => _HomeChipsState();
}

class _HomeChipsState extends State<HomeChips> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: MouseRegion(
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
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: widget.backGroundColor ??
                  (isHovered ? const Color.fromRGBO(45, 71, 214, 1) : null),
              border: Border.all(
                color: widget.borderColor ?? Colors.transparent,
                width: 2,
              )),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              widget.label,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}




  // Padding(
  //   padding: const EdgeInsets.symmetric(
  //     vertical: 15,
  //   ),
  //   child: Container(
  //     decoration: BoxDecoration(
  //         borderRadius:
  //             BorderRadius.circular(40),
  //         color: const Color.fromRGBO(
  //             45, 71, 214, 1)),
  //     child: Padding(
  //       padding: const EdgeInsets.all(20.0),
  //       child: Text(
  //         "Nuestros Servicios",
  //         style: GoogleFonts.poppins(
  //           color: Colors.white,
  //           fontWeight: FontWeight.w700,
  //           fontSize: 20,
  //         ),
  //         maxLines: 1,
  //         overflow: TextOverflow.ellipsis,
  //       ),
  //     ),
  //   ),
  // ),
  // const SizedBox(width: 50),
  // Padding(
  //   padding: const EdgeInsets.symmetric(
  //       vertical: 15),
  //   child: Container(
  //     decoration: BoxDecoration(
  //       borderRadius:
  //           BorderRadius.circular(40),
  //       border: Border.all(
  //         color: const Color.fromRGBO(
  //             45, 71, 214, 1),
  //         width: 2,
  //       ),
  //     ),
  //     child: Padding(
  //       padding: const EdgeInsets.all(20.0),
  //       child: Text(
  //         "Contactanos",
  //         style: GoogleFonts.poppins(
  //           color: Colors.white,
  //           fontWeight: FontWeight.w700,
  //           fontSize: 20,
  //         ),
  //       ),
  //     ),
  //   ),
  // ),