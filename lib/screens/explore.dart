import 'package:fitnessapp/data/ExploreScreenData/BestForYouList.dart';
import 'package:fitnessapp/data/ExploreScreenData/ChallengeList.dart';
import 'package:fitnessapp/data/ExploreScreenData/fastWarmUpList.dart';
import 'package:fitnessapp/widgets/explorePageWidgets/banner.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30,30,20,30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ExploreBanner(),
            const SizedBox(height: 10,),
            Text(
              "Best For you",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 220,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.5
                ), 
                itemCount: bestForYouList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: bestForYouList[index],
                  );
                },
              ),
            ),
            const SizedBox(height: 5,),
            Text(
              "Challenge",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 5,),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: challengeCardList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: challengeCardList[index],
                  );
                },
              ),
            ),
            Text(
              "Fast Warmup",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                itemCount: fastWarmUpList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(8,8,8,8),
                    child: fastWarmUpList[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}