import 'package:fitnessapp/widgets/workoutPageWidget/RoundWidget.dart';

enum Workouts {
  LowerBodyTraining,
  HandTraining,
  ChestTraining
}

Map<Workouts, String> workoutDescription = {
  Workouts.LowerBodyTraining : "The lower abdomen and hips are the most difficult areas of the body to reduce when we are on a diet. Even so, in this area, especially the legs as a whole, you can reduce weight even if you don't use tools.",
  Workouts.HandTraining : "Arm training is a vital component of any gym routine, focusing on building strength, endurance, and definition in the biceps, triceps, and forearms. Effective exercises like curls, tricep dips, and skull crushers not only enhance muscle size but also improve overall upper body functionality. Incorporating a variety of grips and angles can target different muscle fibers, leading to balanced development. Consistency is key; aim for two to three sessions per week, allowing adequate recovery time. Pairing arm training with compound movements, such as bench presses and pull-ups, can further amplify results, making it an essential focus for both aesthetics and performance.",
  Workouts.ChestTraining : "Chest training is a cornerstone of any effective gym routine, focusing on strengthening and sculpting the pectoral muscles. Key exercises like bench presses, push-ups, and flyes engage multiple muscle fibers, promoting growth and definition. Varying angles—such as incline and decline—targets different areas of the chest, ensuring balanced development. Incorporating both free weights and machines can enhance stability and strength. Consistency is crucial; aim for two sessions per week, allowing time for recovery to prevent overtraining. Complementing chest workouts with back exercises promotes overall upper body symmetry, making chest training essential not only for aesthetics but also for functional strength."
};

Map<Workouts, List<RoundsCard>> workOutData = {
  Workouts.LowerBodyTraining : [
    const RoundsCard(
      name: "Jumping Jacks", 
      time: "00:30", 
      image: "assets/WorkoutScreen/LowerBodyTraining/JumpingJacks.png",
    ),
    const RoundsCard(
      name: "Squats", 
      time: "00:30", 
      image: "assets/WorkoutScreen/LowerBodyTraining/Squats.png",
    ),
    const RoundsCard(
      name: "Backward Lunges", 
      time: "00:30", 
      image: "assets/FastWarmUp/BackwardLunges.png",
    ),
  ],
  Workouts.HandTraining : [
    const RoundsCard(
      name: "Push Up", 
      time: "00:30", 
      image: "assets/WorkoutScreen/ArmTraining/PushUp.jpg",
    ),
    const RoundsCard(
      name: "Pull Up", 
      time: "00:30", 
      image: "assets/WorkoutScreen/ArmTraining/PullUp.jpg",
    ),
    const RoundsCard(
      name: "Bicep Curl", 
      time: "00:30", 
      image: "assets/WorkoutScreen/ArmTraining/BicepCurl.jpg",
    ),
  ],
  Workouts.ChestTraining : [
    const RoundsCard(
      name: "Push Up", 
      time: "00:30", 
      image: "assets/WorkoutScreen/ArmTraining/PushUp.jpg",
    ),
    const RoundsCard(
      name: "Bench Press", 
      time: "00:30", 
      image: "assets/WorkoutScreen/ChestTraining/BenchPress.jpg",
    ),
    const RoundsCard(
      name: "Chest Press", 
      time: "00:30", 
      image: "assets/WorkoutScreen/ChestTraining/Chestpress.jpg",
    ),
  ],
};