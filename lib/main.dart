import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpoddemo/view/home_screen.dart';

void main(){
  runApp(ProviderScope(child: RiverpodExample()));
}

class RiverpodExample extends StatelessWidget {
  const RiverpodExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
