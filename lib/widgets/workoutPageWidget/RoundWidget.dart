import 'package:fitnessapp/design/colors.dart';
import 'package:flutter/material.dart';

class RoundsCard extends StatelessWidget {
  const RoundsCard({
    super.key,
    required this.name,
    required this.time,
    required this.image
  });
  final String name;
  final String time;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 80,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 56, 64, 70),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 58,
                  height: 58,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    ), 
                    const SizedBox(width: 10,),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 10,
                        //fontWeight: ontWeight.bold
                      ),
                    ), 
                  ],
                ),
              ),
              
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: primary1,
                radius: 14,
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}