import 'package:fitnessapp/data/WorkoutScreenData/workouts.dart';
import 'package:fitnessapp/design/colors.dart';
import 'package:flutter/material.dart';

class PopularWorkoutCard extends StatelessWidget {
  const PopularWorkoutCard( 
    {super.key, 
    required this.title, 
    required this.caloryBurned, 
    required this.time,
    required this.imageFile,
    required this.type
    }
  );
  final String title;
  final int caloryBurned;
  final int time;
  final String imageFile;
  final Workouts type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 174,
      width: 250,
      child: Stack(
        children: [
          SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(23),
              child: Image.asset(
                imageFile,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: double.maxFinite,
            width: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 21, 21, 21), 
                  Color.fromARGB(0, 29, 29, 29)
                ]
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(23), 
                bottomLeft: Radius.circular(23)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    maxLines: 2,
                    title,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: const Color.fromARGB(185, 255, 255, 255),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.local_fire_department_sharp),
                        const SizedBox(width : 10),
                        Text(
                          "${caloryBurned.toString()} Kcal"
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 30,
                    width:80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: const Color.fromARGB(185, 255, 255, 255),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.timelapse),
                        const SizedBox(width : 10),
                        Text(
                          "${time.toString()} min"
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                backgroundColor: primary1,
                child: const Icon(
                  color: Colors.black,
                  Icons.play_arrow),
              ),
            ),
          ),
        ],
      ),
    );
  }
}