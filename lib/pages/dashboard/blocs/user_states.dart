class UserStates {
  final String userType;

  const UserStates({this.userType = ""});

  UserStates copyWith({String? userType}) {
    return UserStates(
      userType: userType ?? this.userType,
    );
  }
}
