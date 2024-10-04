import 'package:fitnessapp/data/difficulty.dart';
import 'package:fitnessapp/widgets/homePageWidgets/plannedWorkoutCard.dart';

List<PlannedWorkoutCard> plannedWorkout = [
  const PlannedWorkoutCard(
    difficulty: Difficulty.Intermediate, 
    name: "Push Up", 
    reps: 100, 
    progress: 20, 
    image: "assets/image/PushUp.jpg"
  ),
  const PlannedWorkoutCard(
    difficulty: Difficulty.Beginner, 
    name: "Sit up", 
    reps: 100, 
    progress: 90, 
    image: "assets/image/SitUp.jpg"
  ),
  const PlannedWorkoutCard(
    difficulty: Difficulty.Expert, 
    name: "Knee Push Up", 
    reps: 100, 
    progress: 60, 
    image: "assets/image/KneePushUp.jpg"
  ),
];