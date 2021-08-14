class Team {
  Team({
    required this.teamCode,
    required this.teamName,
    required this.teamMembers,
  });

  late final String teamCode;
  late final String teamName;
  late final List<TeamMember> teamMembers;

  Team.fromJson(Map<String, dynamic> json) {
    teamCode = json['team_code'];
    teamName = json['team_name'];
    teamMembers = List.from(json['team_members']).map((e) => TeamMember.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['team_code'] = teamCode;
    _data['team_name'] = teamName;
    _data['team_members'] = teamMembers.map((e) => e.toJson()).toList();
    return _data;
  }
}

class TeamMember {
  TeamMember({
    required this.profilePicture,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
  });

  late final String profilePicture;
  late final String firstName;
  late final String lastName;
  late final String phoneNumber;

  TeamMember.fromJson(Map<String, dynamic> json) {
    profilePicture = json['profile_picture'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    phoneNumber = json['phone_number'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['profile_picture'] = profilePicture;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['phone_number'] = phoneNumber;
    return _data;
  }
}
