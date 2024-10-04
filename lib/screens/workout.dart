import 'dart:convert';

import 'package:fitnessapp/data/WorkoutScreenData/workouts.dart';
import 'package:fitnessapp/design/colors.dart';
import 'package:fitnessapp/widgets/homePageWidgets/popularWorkoutCard.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({
    super.key,
    required this.curretWorkout,
    required this.description
  });
  final PopularWorkoutCard curretWorkout;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 33, 38),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 33, 38),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          }, 
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          ),
        ),
        title: Center(
          child: Text(
            "Workout",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 25, 33, 38),
                  child: Stack(
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                        color: const Color.fromARGB(255, 25, 33, 38),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            curretWorkout.imageFile,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 275,
                          height: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(212, 25, 33, 38),
                            border: Border.all(
                              color: Colors.white,
                              width: 0.1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              
                              Container(
                                width: 120,
                                height: 64,
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: primary1
                                      ),
                                      child: const Icon(
                                        Icons.alarm,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 3,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Time",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "${curretWorkout.time.toString()} min",
                                          style: TextStyle(
                                            color: primary1,
                                            fontFamily: 'Lato',
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //Container(
                              //  height: 32,
                              //  width: 1,
                              //  color: Colors.white,
                              //),
                              Container(
                                width: 120,
                                height: 64,
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: primary1
                                      ),
                                      child: const Icon(
                                        Icons.local_fire_department_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 3,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Burn",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "${curretWorkout.caloryBurned.toString()} kcal",
                                          style: TextStyle(
                                            color: primary1,
                                            fontFamily: 'Lato',
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),  
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  curretWorkout.title,
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: SingleChildScrollView(
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontFamily: 'Lato'
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rounds",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,     
                        color: Colors.white            
                       ),
                    ),
                    Text(
                      "1/8",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontFamily: 'Lato',
                        //fontWeight: FontWeight.bold,    
                        color: Colors.white
                      ),
                    ),
                    
                  ],
                ),
                Expanded(
                  child:  ListView.builder(
                    //padding: const EdgeInsets.all(8),
                    itemCount: workOutData[curretWorkout.type]!.length,
                    itemBuilder: (context, index) {
                      double height = 0;
                      if(index == workOutData[curretWorkout.type]!.length - 1) {
                        height = 100;
                      }
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            workOutData[curretWorkout.type]![index],
                            SizedBox(height: height,)
                          ],
                        ),
                      );
                    },),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: InkWell(
            onTap: () {
            },
            child: Container(
              height: 56,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
                color: primary1,
              ),
              child: Center(
                child: Text(
                  "Lets Workout!",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato'
                  ),
                ),
              ),
            ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}