import 'package:connect_fix/pages/dashboard/blocs/user_events.dart';
import 'package:connect_fix/pages/dashboard/blocs/user_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBlocs extends Bloc<UserEvents, UserStates> {
  UserBlocs() : super(const UserStates()) {
    on<UserTypeEvent>(_userTypeEvent);
  }

  void _userTypeEvent(UserTypeEvent event, Emitter<UserStates> emit) {
    emit(state.copyWith(userType: event.userType));
  }
}
