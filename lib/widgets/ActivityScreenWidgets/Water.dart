import 'package:flutter/material.dart';

class WaterIntake extends StatelessWidget {
  const WaterIntake({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    width: 156,
                    height: 128,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              color: Colors.blue[50],
                              child: const Icon(Icons.water_drop_outlined),
                            ),
                            const SizedBox(width: 10,),
                            Text(
                              "Water",
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          height: 58,
                          width: 132,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(19),
                              bottomRight: Radius.circular(19)
                            ),
                            color: Colors.white
                          ),
                          child: Center(
                            child: Text(
                              "6/8",
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
  }
}