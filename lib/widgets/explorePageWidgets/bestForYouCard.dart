import 'package:fitnessapp/data/difficulty.dart';
import 'package:flutter/material.dart';

class BestForYouCard extends StatelessWidget {
  const BestForYouCard({
    super.key,
    required this.name,
    required this.time,
    required this.difficulty,
    required this.image
  });
  final String image;
  final String name;
  final int time;
  final Difficulty difficulty;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              height: 72,
              width: 72,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(9))
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 5,),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      name,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 241, 241, 241)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Text(
                        "${time.toString()} min",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 241, 241, 241)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Text(
                        difficulty.name,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}