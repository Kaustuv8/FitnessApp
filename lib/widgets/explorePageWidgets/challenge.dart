import 'package:fitnessapp/design/colors.dart';
import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({
    super.key,
    required this.name,
    required this.icon,
    required this.cardColor
    }
  );
  final String name;
  final IconData icon;
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(9)
      ),
      //color: cardColor,
      width: 110,
      height: 110,
      child: Stack(
        children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Icon(
            icon,
            color: cardColor == Colors.white ? primary1 : cardColor == Colors.black ? Colors.grey:Colors.white,
            size: 60,
          ),
         ),
         Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
                      "$name challenge",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: cardColor == Colors.black ? Colors.white : Colors.black,
                fontFamily: 'Lato',
              ),
            ),
          ),
         ),
         
        ],
      ),
    );
  }
}