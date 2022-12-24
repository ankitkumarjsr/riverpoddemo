import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpoddemo/controller/app_state_controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final displayState = ref.watch(appStateProvider);
    final controlState = ref.watch(appStateProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: Text(
        "Rivrerpod User : ${displayState.userState.currentUser.name}"
      ),),
      floatingActionButton:  Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () => controlState.decreaseCounterValue(), icon: Icon(Icons.remove)),
            IconButton(onPressed: () => controlState.increaseCounterValue(), icon: Icon(Icons.add))
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(displayState.counterState.value.toString()),
          ],
        ),
      ),
    );
  }
}
