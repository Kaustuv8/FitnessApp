
import 'package:fitnessapp/data/WorkoutScreenData/workouts.dart';
import 'package:fitnessapp/widgets/homePageWidgets/popularWorkoutCard.dart';

List<PopularWorkoutCard> popularWorkouts = [  
  const PopularWorkoutCard(
    type: Workouts.LowerBodyTraining,
    title: "Lower Body Training", 
    caloryBurned: 500, 
    time: 50, 
    imageFile: "assets/image/LowerBodyTraining.jpg",
  ),
  const PopularWorkoutCard(
    type: Workouts.HandTraining,
    title: "Hand Training", 
    caloryBurned: 500, 
    time: 50, 
    imageFile: "assets/image/HandTraining.jpg",
  ),
  const PopularWorkoutCard(
    type: Workouts.ChestTraining,
    title: "Chest Training", 
    caloryBurned: 500, 
    time: 50, 
    imageFile: "assets/image/ChestTraining.jpg",
  ),
];