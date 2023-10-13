import 'package:capitals_game/home/home_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}

/*
egerde surottordu internetten alganda  'PNG' farmatta algan jakshy,
sebebi 'SVG' menen abdan chon bolup ketishi mumkun,
"SVG" farmatta kichinekey ICONKALARDY alsak jakshy bolot,chonoytup beret;
*/ 