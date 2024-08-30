import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:landing_page/core/constants/clients.dart';

class ClientsWidget extends StatelessWidget {
  const ClientsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Align(
        alignment: Alignment.center,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 20.0,
          runSpacing: 20.0,
          children: List.generate(clients.length, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 6,
                child: SvgPicture.asset(clients[index]),
              ),
            );
          }),
        ),
      ),
    );
  }
}
