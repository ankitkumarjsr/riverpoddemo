import 'package:riverpoddemo/states/counter_state.dart';
import 'package:riverpoddemo/states/user_state.dart';

class AppState {
  CounterState counterState;
  UserState userState;
  AppState({required this.userState, required this.counterState});

  AppState updateAppState(
      {UserState? latestUserState, CounterState? latestCounterState}) {
    return AppState(
        userState: latestUserState ?? userState,
        counterState: latestCounterState ?? counterState);
  }
}
