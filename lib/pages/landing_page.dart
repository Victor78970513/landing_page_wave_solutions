// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:landing_page/core/constants/services.dart';
// import 'package:landing_page/widgets/header.dart';
// import 'package:rive/rive.dart' hide LinearGradient, Image;

// class LandingPage extends StatefulWidget {
//   const LandingPage({super.key});

//   @override
//   LandingPageState createState() => LandingPageState();
// }

// class LandingPageState extends State<LandingPage> {
//   final ScrollController _scrollController = ScrollController();

//   void _scrollToSection(double offset) {
//     _scrollController.animateTo(
//       offset,
//       duration: const Duration(milliseconds: 200),
//       curve: Curves.easeInOut,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.sizeOf(context);
//     final double screenWidth = MediaQuery.sizeOf(context).width;
//     double textSize = screenWidth * 0.08;
//     textSize = textSize.clamp(30.0, 80.0);

//     double textSize2 = screenWidth * 0.05;
//     textSize2 = textSize2.clamp(15.0, 30.0);

//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           HeaderWidget(
//             onMenuItemTap: (section) {
//               switch (section) {
//                 case 'Inicio':
//                   _scrollToSection(0);
//                   break;
//                 case 'Servicios':
//                   _scrollToSection(2300);
//                   break;
//                 case 'Acerca de':
//                   _scrollToSection(850);
//                   break;
//                 case 'Contáctanos':
//                   _scrollToSection(3700);
//                   break;
//                 default:
//                   break;
//               }
//             },
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               controller: _scrollController,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 18.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 50),
//                     SizedBox(
//                       width: screenWidth,
//                       child: Padding(
//                         padding: size.width > 801
//                             ? EdgeInsets.symmetric(
//                                 horizontal: size.width * 0.25)
//                             : EdgeInsets.symmetric(
//                                 horizontal: size.width * 0.1),
//                         child: Text(
//                           "Muy buena tecnología, equipos y resultados",
//                           style: GoogleFonts.poppins(
//                             textStyle: TextStyle(
//                               color: Colors.white,
//                               fontSize: textSize,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                       ),
//                     ),
//                     if (size.width > 801)
//                       SizedBox(
//                         height: size.height * 0.4,
//                         width: size.width,
//                         child: Stack(
//                           children: [
//                             Positioned(
//                               child: SizedBox(
//                                 width: size.width * 0.7,
//                                 child: Padding(
//                                   padding:
//                                       EdgeInsets.only(left: size.width * 0.2),
//                                   child: Text(
//                                     "Diseñamos y creamos experiencias digitales de clase mundial para cualquier pantalla, con las mejores herramientas y enfoques de ingeniería para obtener resultados consistentes y escalables. Descubra cómo Wave le ayuda a dar en el blanco.",
//                                     style: GoogleFonts.poppins(
//                                       textStyle: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: textSize2,
//                                       ),
//                                     ),
//                                     textAlign: TextAlign.left,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               bottom: 0,
//                               right: 0,
//                               child: SvgPicture.asset(
//                                 "assets/logos/formas_image.svg",
//                                 height: size.height * 0.4,
//                                 width: size.width,
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     if (size.width <= 801)
//                       SizedBox(
//                         height: size.height * 0.5,
//                         width: size.width,
//                         child: Column(
//                           children: [
//                             SizedBox(
//                               width: size.width,
//                               height: size.height * 0.25,
//                               child: Text(
//                                 "Diseñamos y creamos experiencias digitales de clase mundial para cualquier pantalla, con las mejores herramientas y enfoques de ingeniería para obtener resultados consistentes y escalables. Descubra cómo Wave le ayuda a dar en el blanco.",
//                                 style: GoogleFonts.poppins(
//                                   textStyle: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: textSize2,
//                                   ),
//                                 ),
//                                 textAlign: TextAlign.left,
//                               ),
//                             ),
//                             SvgPicture.asset(
//                               "assets/logos/formas_image.svg",
//                               height: size.height * 0.2,
//                               width: size.width,
//                               fit: BoxFit.fill,
//                             )
//                           ],
//                         ),
//                       ),
//                     const SizedBox(height: 20),
//                     Container(
//                       padding: const EdgeInsets.symmetric(vertical: 40),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding:
//                                 const EdgeInsets.symmetric(horizontal: 18.0),
//                             child: Text(
//                               "Acerca de Nosotros",
//                               style: GoogleFonts.poppins(
//                                 textStyle: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: screenWidth * 0.04,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           SizedBox(
//                             width: screenWidth,
//                             child: Padding(
//                               padding: size.width > 801
//                                   ? EdgeInsets.symmetric(
//                                       horizontal: size.width * 0.2)
//                                   : EdgeInsets.symmetric(
//                                       horizontal: size.width * 0.1),
//                               child: Text(
//                                 "En Wave Technologies, estamos comprometidos con la excelencia en cada proyecto que emprendemos. Nuestra misión es proporcionar soluciones digitales innovadoras que no solo satisfagan, sino superen las expectativas de nuestros clientes. Desde el desarrollo de aplicaciones móviles hasta el diseño web y la consultoría en transformación digital, nuestro equipo está formado por expertos apasionados por la tecnología y la creatividad. Creemos en la colaboración estrecha con nuestros clientes para entender sus necesidades y ofrecer resultados que impulsen su éxito. Descubra cómo podemos ayudar a su empresa a alcanzar nuevas alturas con nuestras soluciones tecnológicas a medida.",
//                                 style: GoogleFonts.poppins(
//                                   textStyle: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: textSize2,
//                                   ),
//                                 ),
//                                 textAlign: TextAlign.left,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 40),
//                           Padding(
//                             padding:
//                                 const EdgeInsets.symmetric(horizontal: 18.0),
//                             child: Text(
//                               "Nuestro Equipo",
//                               style: GoogleFonts.poppins(
//                                 textStyle: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: screenWidth * 0.04,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           Container(
//                             width: size.width,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(15),
//                               gradient: LinearGradient(
//                                 colors: [
//                                   Colors.blue.shade900,
//                                   Colors.blue.shade700,
//                                 ],
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                               ),
//                             ),
//                             padding: const EdgeInsets.all(16),
//                             child: Column(
//                               children: [
//                                 const SingleChildScrollView(
//                                   scrollDirection: Axis.horizontal,
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       TeamMemberCard(
//                                         imagePath: "assets/members/hiller.jpeg",
//                                         name: "Hiller Mendoza",
//                                         role: "UI/UX Designer",
//                                       ),
//                                       TeamMemberCard(
//                                         imagePath: "assets/members/jhadir.jpeg",
//                                         name: "Jhadir Riveros",
//                                         role: "Web Developer",
//                                       ),
//                                       TeamMemberCard(
//                                         imagePath: "assets/members/mijoto.jpeg",
//                                         name: "Victor Choque",
//                                         role: "Mobile Developer",
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const SizedBox(height: 10),
//                                 Text(
//                                   "Conoce a los apasionados por la tecnología que hacen posible Wave Technologies.",
//                                   style: GoogleFonts.poppins(
//                                     textStyle: TextStyle(
//                                       color: Colors.white70,
//                                       fontSize: textSize2 * 0.8,
//                                     ),
//                                   ),
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Container(
//                       padding: const EdgeInsets.symmetric(vertical: 40),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding:
//                                 const EdgeInsets.symmetric(horizontal: 18.0),
//                             child: Text(
//                               "Nuestros Servicios",
//                               style: GoogleFonts.poppins(
//                                 textStyle: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: screenWidth * 0.04,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 30),
//                           if (size.width > 801)
//                             Align(
//                               alignment: Alignment.center,
//                               child: SizedBox(
//                                 width: size.width * 0.8,
//                                 child: Wrap(
//                                   alignment: WrapAlignment.center,
//                                   children:
//                                       List.generate(services.length, (index) {
//                                     final service = services[index];
//                                     return ServiceCard(
//                                       icon: service['icon']!,
//                                       title: service['title']!,
//                                       description: service['description']!,
//                                     );
//                                   }),
//                                 ),
//                               ),
//                             ),
//                           if (size.width <= 801)
//                             Align(
//                               alignment: Alignment.center,
//                               child: Column(
//                                 children:
//                                     List.generate(services.length, (index) {
//                                   final service = services[index];
//                                   return ServiceCard(
//                                     icon: service['icon']!,
//                                     title: service['title']!,
//                                     description: service['description']!,
//                                   );
//                                 }),
//                               ),
//                             )
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: MediaQuery.sizeOf(context).width,
//                       padding: const EdgeInsets.symmetric(vertical: 25),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding:
//                                 const EdgeInsets.symmetric(horizontal: 18.0),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   "tecnologias que usamos",
//                                   style: GoogleFonts.poppins(
//                                     textStyle: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: screenWidth * 0.035,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 100,
//                                   width: size.width * 0.1,
//                                   child: const RiveAnimation.asset(
//                                     "assets/rive/flutterdash.riv",
//                                     fit: BoxFit.fill,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                           const SizedBox(height: 50),
//                           Align(
//                             alignment: Alignment.center,
//                             child: SizedBox(
//                               height: 100,
//                               width: MediaQuery.sizeOf(context).width * 0.7,
//                               child: CarouselSlider.builder(
//                                   itemCount: techs.length,
//                                   itemBuilder: (context, index, _) {
//                                     final tech = techs[index];
//                                     return SvgPicture.asset(
//                                       tech,
//                                       height: 100,
//                                       width: 100,
//                                     );
//                                   },
//                                   options: CarouselOptions(
//                                     scrollPhysics:
//                                         const NeverScrollableScrollPhysics(),
//                                     aspectRatio: 16 / 9,
//                                     viewportFraction: 0.22,
//                                     initialPage: 0,
//                                     enableInfiniteScroll: true,
//                                     reverse: true,
//                                     autoPlay: true,
//                                     autoPlayInterval:
//                                         const Duration(milliseconds: 1000),
//                                     autoPlayAnimationDuration:
//                                         const Duration(milliseconds: 800),
//                                     autoPlayCurve: Curves.fastOutSlowIn,
//                                     enlargeCenterPage: true,
//                                     // enlargeFactor: 0.3,
//                                     scrollDirection: Axis.horizontal,
//                                   )),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     //? CONTACTANOS
//                     Container(
//                       width: MediaQuery.sizeOf(context).width,
//                       padding: const EdgeInsets.symmetric(vertical: 25),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding:
//                                 const EdgeInsets.symmetric(horizontal: 18.0),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   "Contacta con nosotros",
//                                   style: GoogleFonts.poppins(
//                                     textStyle: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: screenWidth * 0.035,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.center,
//                             child: Container(
//                               height: 40,
//                               width: size.width * 0.8,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(15),
//                                   color: Colors.white),
//                               child: const Padding(
//                                 padding: EdgeInsets.only(left: 20),
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                       border: InputBorder.none,
//                                       hintText: "Ingresa tu nombre"),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           Align(
//                             alignment: Alignment.center,
//                             child: Container(
//                               height: size.height * 0.4,
//                               width: size.width * 0.8,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: Stack(
//                                 children: [
//                                   Positioned(
//                                     bottom: 0,
//                                     right: 0,
//                                     child: Container(
//                                       height: size.height * 0.2,
//                                       width: size.width * 0.4,
//                                       child: const RiveAnimation.asset(
//                                         "assets/rive/party.riv",
//                                         fit: BoxFit.fill,
//                                       ),
//                                     ),
//                                   ),
//                                   const Padding(
//                                     padding: EdgeInsets.all(20.0),
//                                     child: TextField(
//                                       decoration: InputDecoration(
//                                           border: InputBorder.none,
//                                           hintText:
//                                               "Ingresa tu peticion o preguntas"),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           Align(
//                             alignment: Alignment.centerRight,
//                             child: Padding(
//                               padding: EdgeInsets.only(right: size.width * 0.1),
//                               child: ElevatedButton(
//                                 onPressed: () {},
//                                 child: SizedBox(
//                                   height: 50,
//                                   width: size.width * 0.1,
//                                   child: const RiveAnimation.asset(
//                                       "assets/rive/send.riv"),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 50),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ServiceCard extends StatelessWidget {
//   final String icon;
//   final String title;
//   final String description;

//   const ServiceCard({
//     super.key,
//     required this.icon,
//     required this.title,
//     required this.description,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final double screenWidth = MediaQuery.sizeOf(context).width;
//     double textSize2 = screenWidth * 0.05;
//     textSize2 = textSize2.clamp(5.0, 16.0);
//     double textSize3 = screenWidth * 0.03;
//     textSize3 = textSize3.clamp(5.0, 14.0);
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Container(
//         height: MediaQuery.of(context).size.height * 0.6,
//         width: MediaQuery.sizeOf(context).width > 801
//             ? MediaQuery.of(context).size.width * 0.35
//             : MediaQuery.of(context).size.width * 0.7,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height * 0.35,
//               // width: MediaQuery.of(context).size.width * 0.4,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 image: DecorationImage(
//                   image: AssetImage(icon),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               title,
//               style: GoogleFonts.poppins(
//                 textStyle: TextStyle(
//                   fontSize: textSize2,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Text(
//                 description,
//                 style: GoogleFonts.poppins(
//                   textStyle: TextStyle(
//                     fontSize: textSize3,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 overflow: TextOverflow.ellipsis,
//                 maxLines: 4,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TeamMemberCard extends StatelessWidget {
//   final String imagePath;
//   final String name;
//   final String role;

//   const TeamMemberCard({
//     super.key,
//     required this.imagePath,
//     required this.name,
//     required this.role,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(50),
//             child: Image.asset(
//               imagePath,
//               height: MediaQuery.sizeOf(context).height * 0.3,
//               width: MediaQuery.sizeOf(context).height * 0.3,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             name,
//             style: GoogleFonts.poppins(
//               textStyle: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             role,
//             style: GoogleFonts.poppins(
//               textStyle: const TextStyle(
//                 color: Colors.white60,
//                 fontSize: 16,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
