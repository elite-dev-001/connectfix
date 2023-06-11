abstract class UserEvents {
  const UserEvents();
}

class UserTypeEvent extends UserEvents {
  final String userType;

  const UserTypeEvent(this.userType);
}
