import 'package:fitnessapp/design/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math' as math;

class ExploreBanner extends StatelessWidget {
  const ExploreBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23)
      ),
      child: Stack(
        children: [
          Container(
            height: 180,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(23),
              child: 
              Image.asset(
                "assets/BannerImage/BannerImage.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,            
            width: double.maxFinite,
            height: double.maxFinite,
            child: FractionallySizedBox(
              heightFactor: 1,
              widthFactor: 0.75,
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                      Colors.black,
                      Color.fromARGB(0, 255, 255, 255),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(23),
                    bottomLeft: Radius.circular(23)
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Best Quarentine Workout",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        children: [
                          Text(
                            "See More",
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontFamily: 'Lato',
                              
                              fontWeight: FontWeight.bold,
                              color: primary1
                            ),
                            
                          ),
                          const SizedBox(width: 10,),
                          Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(math.pi),
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: primary1,
                              size: 10,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}