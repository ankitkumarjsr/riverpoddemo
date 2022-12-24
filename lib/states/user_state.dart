import '../controller/app_state_controller.dart';
import '../model/user_model.dart';

class UserState{
  User currentUser;

  UserState({required this.currentUser});

  UserState updateUserState(int userIndex){
    return UserState(currentUser: userList[userIndex]);
  }
}