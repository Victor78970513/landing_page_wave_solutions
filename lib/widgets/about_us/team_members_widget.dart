import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/core/constants/members.dart';

class TeamMembersWidget extends StatelessWidget {
  final List<TeamMember> members;
  const TeamMembersWidget({super.key, required this.members});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 50,
      runSpacing: 50,
      children: List.generate(members.length, (index) {
        final member = members[index];
        return Container(
          width: size.width * 0.2,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: size.height * 0.15,
                backgroundImage: AssetImage(member.imagePath),
              ),
              const SizedBox(height: 10),
              Text(
                member.name,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                member.position,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.grey[600],
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              const FaIcon(
                FontAwesomeIcons.linkedin,
                color: Colors.blueAccent,
                size: 40,
              ),
            ],
          ),
        );
      }),
    );
  }
}
