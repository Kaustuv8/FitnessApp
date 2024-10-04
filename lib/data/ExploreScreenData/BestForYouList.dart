import 'package:fitnessapp/data/difficulty.dart';
import 'package:fitnessapp/widgets/explorePageWidgets/bestForYouCard.dart';

List<BestForYouCard> bestForYouList = [
  const BestForYouCard(
            name: "Belly Fat Burner", 
            time: 10, 
            difficulty: Difficulty.Beginner, 
            image: "assets/bestForYou/BellyFatBurner.png"
          ),
  const BestForYouCard(
            name: "Bicep Training", 
            time: 10, 
            difficulty: Difficulty.Intermediate, 
            image: "assets/bestForYou/Biceps.jpg"
          ),
  const BestForYouCard(
            name: "Lose Fat", 
            time: 10, 
            difficulty: Difficulty.Beginner, 
            image: "assets/bestForYou/LoseFat.png"
          ),
  const BestForYouCard(
            name: "Plank", 
            time: 10, 
            difficulty: Difficulty.Expert, 
            image: "assets/bestForYou/Plank.png"
          ),
];