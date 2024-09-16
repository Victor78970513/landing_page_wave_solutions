import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TechnologiesShowcase extends StatefulWidget {
  final List<String> technologies;
  const TechnologiesShowcase({super.key, required this.technologies});

  @override
  // ignore: library_private_types_in_public_api
  _TechnologiesShowcaseState createState() => _TechnologiesShowcaseState();
}

class _TechnologiesShowcaseState extends State<TechnologiesShowcase>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0.8, end: 1.1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.center,
      children: widget.technologies.map((svgPath) {
        return AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // color: Colors.white,
                  color: Color(0xFFE3F2FD),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  svgPath,
                  width: 100,
                  height: 100,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
