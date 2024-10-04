import 'package:fitnessapp/design/colors.dart';
import 'package:fitnessapp/screens/activity.dart';
import 'package:fitnessapp/screens/explore.dart';
import 'package:fitnessapp/screens/home.dart';
import 'package:fitnessapp/screens/start.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget displayScreen = const HomeScreen();
  int scptr = 1;
  int startptr = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: startptr == 0 ?  StartScreen(
        onTap: () {
          setState(() {
            startptr = 1;
          });
        },) : 
      Scaffold(
          backgroundColor: const Color.fromARGB(255, 247, 246, 250),
          body: displayScreen,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 64,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(32),
                  right: Radius.circular(32),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        displayScreen = const HomeScreen();
                        scptr = 1;
                      });
                    },
                    child: scptr == 1 ? 
                    const HighlightedButton(name: "Home", icon: Icons.home)
                    : Icon(
                    Icons.home,
                      color: scptr == 1 ? primary1 : Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        displayScreen = const ExploreScreen();
                        scptr = 2;
                      });
                    },
                    child: scptr == 2 ? const HighlightedButton(name: "Explore", icon: Icons.rocket_launch): Icon(
                      Icons.rocket_launch,
                      color: scptr == 2 ? primary1 : Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        displayScreen = ActivityScreen();
                        scptr = 3;
                      });
                    },
                    child: scptr == 3 ? const HighlightedButton(name: "Analytics", icon: Icons.stacked_bar_chart)
                    : const Icon(
                      Icons.stacked_bar_chart_rounded,
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.person,
                    color: Colors.white,
                  )
                ],

              ),
            ),
          ),
     ),
    );
  }
}

class HighlightedButton extends StatelessWidget {
  const HighlightedButton({
    super.key,
    required this.name,
    required this.icon
  });
  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 100,
      decoration: BoxDecoration(
        color: primary1,
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(33),
          right: Radius.circular(33),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(width: 5,),
            Icon(
              icon,
              color: Colors.black,
            ),
            Text(
              name,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 5,)
          ],
        ),
      ),
    );
  }
}