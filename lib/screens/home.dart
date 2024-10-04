
import 'package:fitnessapp/data/HomeScreenData/plannedWorkOut.dart';
import 'package:fitnessapp/data/HomeScreenData/popularWorkout.dart';
import 'package:fitnessapp/data/WorkoutScreenData/workouts.dart';
import 'package:fitnessapp/screens/workout.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning 🔥", 
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                "Kaustuv Pradhan", 
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 20,),
              const SearchBar(
                shadowColor: WidgetStatePropertyAll(Colors.transparent),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
                leading: Icon(Icons.search_rounded),
                hintText: "Search",
              ),
            ],
          ),
          ),
          Text(
            "Popular Workouts",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 180,
            child: ListView.builder(
              itemCount: popularWorkouts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () async {
                    await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WorkoutScreen(
                          curretWorkout: popularWorkouts[index],
                          description: workoutDescription[popularWorkouts[index].type]!,
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: popularWorkouts[index],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            "Today's Plan",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              scrollDirection: Axis.vertical,
              itemCount: plannedWorkout.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(height: 10,),
                    plannedWorkout[index],
                    const SizedBox(height: 10,)
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}