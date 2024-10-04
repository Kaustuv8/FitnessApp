import 'package:flutter/material.dart';

class TrainingTime extends StatelessWidget {
  const TrainingTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                        height: 132,
                        width: 112,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 234, 236, 255),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Training Time",
                              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Container(
                              height: 74,
                              width: 74,
                            )
                          ],
                        ),
                      );
  }
}