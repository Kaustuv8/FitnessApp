import 'package:fitnessapp/widgets/ActivityScreenWidgets/ActiveCalory.dart';
import 'package:fitnessapp/widgets/ActivityScreenWidgets/CalenderScroller.dart';
import 'package:fitnessapp/widgets/ActivityScreenWidgets/Cycling.dart';
import 'package:fitnessapp/widgets/ActivityScreenWidgets/HeartRate.dart';
import 'package:fitnessapp/widgets/ActivityScreenWidgets/KeepItUp.dart';
import 'package:fitnessapp/widgets/ActivityScreenWidgets/Sleep.dart';
import 'package:fitnessapp/widgets/ActivityScreenWidgets/Steps.dart';
import 'package:fitnessapp/widgets/ActivityScreenWidgets/TrainingTime.dart';
import 'package:fitnessapp/widgets/ActivityScreenWidgets/Water.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  ActivityScreen({super.key});

  @override

  Widget build(BuildContext context) {
    final currentTime = DateTime.now();
    final currentMonth = currentTime.month;
    Map<int, String> intToDay = {
      1 : "M",
      2 : "T",
      3 : "W",
      4 : "T",
      5 : "F",
      6 : "S",
      7 : "S",
    };

    Map<int, String> intToMonth = {
      1 : "January",
      2 : "Feburary",
      3 : "March",
      4 : "April",
      5 : "May",
      6 : "June",
      7 : "July",
      8 : "August",
      9 : "September",
      10 : "October",
      11 : "November",
      12 : "December"
    };
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${intToMonth[currentMonth]} ${DateTime.now().year}",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20,),
            Calenderscroller(intToDay: intToDay, intToMonth: intToMonth),
            const SizedBox(height: 20,),
            Text(
              "Today Report",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 15,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      ActiveCalory(),
                      TrainingTime(),
                    ],
                  ),
                  Cycling(),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                   HeartRate(),
                   SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     StepsCard(),
                     SizedBox(height: 10,),
                      KeepItUp(),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Sleep(),
                  SizedBox(width: 10,),
                  WaterIntake(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}