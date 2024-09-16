class TeamMember {
  final String imagePath;
  final String name;
  final String position;
  final String linkedInUrl;

  TeamMember({
    required this.imagePath,
    required this.name,
    required this.position,
    required this.linkedInUrl,
  });
}

final List<TeamMember> waveMembers = [
  TeamMember(
    imagePath: "assets/members/mijoto.jpeg",
    name: "Victor Yerson Choque",
    position: "CEO & Senior Flutter Developer",
    linkedInUrl: "linkedInUrl",
  ),
  TeamMember(
    imagePath: "assets/members/jhadir.jpeg",
    name: "Jhadir Riveros Lopez",
    position: "Web Developer",
    linkedInUrl: "linkedInUrl",
  ),
  TeamMember(
    imagePath: "assets/members/hiller.jpeg",
    name: "Daniel Arthur Hiler",
    position: "Google Cloud Engineer",
    linkedInUrl: "linkedInUrl",
  ),
  TeamMember(
    imagePath: "assets/members/isabel.jpeg",
    name: "Isabel Vela Alvarado",
    position: "UI/Ux Designer",
    linkedInUrl: "linkedInUrl",
  ),
  TeamMember(
    imagePath: "assets/members/panama.jpeg",
    name: "Fabricio Panama Mendez",
    position: "Backend Developer",
    linkedInUrl: "linkedInUrl",
  )
];
