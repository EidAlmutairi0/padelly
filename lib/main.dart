import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'Screens/Centers/Centers.dart';
import 'Screens/Map/Map.dart';
import 'Screens/Profile/Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF00a08b),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List tabs = [ProfileScreen(), CentersScreen(), MapScreen()];
  int currentScreen = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: const Color(0xFF00a08b),
        items: const [
          TabItem(icon: Icons.person_outline_outlined),
          TabItem(icon: Icons.sports_baseball_outlined),
          TabItem(icon: Icons.map_outlined),
        ],

        initialActiveIndex: 1, //optional, default as 0
        onTap: (int i) {
          setState(() {
            currentScreen = i;
          });
        },
      ),
      body: tabs[currentScreen],
    );
  }
}
