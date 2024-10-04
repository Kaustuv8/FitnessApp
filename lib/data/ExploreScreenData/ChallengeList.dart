import 'package:fitnessapp/design/colors.dart';
import 'package:fitnessapp/widgets/explorePageWidgets/challenge.dart';
import 'package:flutter/material.dart';


List<ChallengeCard> challengeCardList = [
  ChallengeCard(
    name: "Plank", 
    icon: Icons.local_fire_department_outlined, 
    cardColor: primary1
  ),
  const ChallengeCard(
    name: "Sprint", 
    icon: Icons.directions_run_sharp, 
    cardColor: Colors.black
  ),
  const ChallengeCard(
    name: "Squat",
    icon: Icons.water_drop_sharp, 
    cardColor: Colors.white
  ),

];