import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';
import 'provider.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => color1provider()),
          ChangeNotifierProvider(create: (context) => color2provider()),
          ChangeNotifierProvider(create: (context) => color3provider()),
          ChangeNotifierProvider(create: (context) => color4provider()),
        ],
        child: MaterialApp(
          home: colorbox(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
