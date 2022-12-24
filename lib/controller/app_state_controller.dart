import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpoddemo/states/app_state.dart';
import 'package:riverpoddemo/states/counter_state.dart';

import '../model/user_model.dart';
import '../states/user_state.dart';

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier()
      : super(AppState(
            userState: UserState(currentUser: userList[0]),
            counterState: CounterState(value: 0)));

  increaseCounterValue(){
        state = state.updateAppState(
          latestCounterState: state.counterState.increaseValue()
        );
        updateUserIndex();
      }

  decreaseCounterValue(){
    state = state.updateAppState(
        latestCounterState: state.counterState.decreaseValue()
    );
    updateUserIndex();
  }

  updateUserIndex(){
    state = state.updateAppState(
        latestUserState:  state.userState.updateUserState(state.counterState.value)
    );
  }
}

final appStateProvider = StateNotifierProvider<AppStateNotifier,AppState >((ref) {
  return AppStateNotifier();
});


List<User> userList = [
  User(name: "Subho"),
  User(name: "Ankit"),
  User(name: "Paaji"),
  User(name: "Abhi"),
  User(name: "Vishal")
];
