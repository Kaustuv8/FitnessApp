import 'package:fitnessapp/data/difficulty.dart';
import 'package:fitnessapp/design/colors.dart';
import 'package:flutter/material.dart';

class PlannedWorkoutCard extends StatelessWidget {
  const PlannedWorkoutCard({
    super.key,
    required this.difficulty,
    required this.name,
    required this.reps,
    required this.progress,
    required this.image,
  });
  final Difficulty difficulty;
  final String name;
  final int reps;
  final int progress;
  final String image;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      //padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(width: 80,),
                  Container(
                    width: 61,
                    height: 30,
                    //color: Colors.black,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(3), 
                        bottomRight: Radius.circular(3)),
                    ),
                    child:  Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            difficulty.name,
                            style: const TextStyle(
                              fontFamily: 'Lato',
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                name,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                "${reps.toString()} $name a day",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.normal,
                  color: const Color.fromARGB(153, 25, 33, 38)
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 16,
                width: 170,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 242, 242, 242),
                  borderRadius: BorderRadius.circular(3),
                  ),
                child: Row(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: primary1,
                      ),
                      width: 170*progress/100,
                      child: Center(
                        child: Text(
                          progress >= 20 ? "$progress %" : " ",
                          style : Theme.of(context).textTheme.bodySmall!.copyWith(
                           color: const Color.fromARGB(255, 25, 33, 38), 
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      color: const Color.fromARGB(255, 242, 242, 242),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}