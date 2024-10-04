import 'package:flutter/material.dart';

class ActiveCalory extends StatelessWidget {
  const ActiveCalory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 112,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 1.0,
                              color: Colors.grey
                            ),
                            color: const Color.fromARGB(255, 255, 255, 255)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Active Calories",
                                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                  fontFamily: 'Lato'
                                ),
                              ),
                              Text(
                                "645",
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
  }
}