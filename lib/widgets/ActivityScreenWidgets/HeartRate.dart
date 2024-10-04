import 'package:flutter/material.dart';

class HeartRate extends StatelessWidget {
  const HeartRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 167,
                    width: 199,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 252, 221, 221),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 28,
                                width: 28,
                                color: const Color.fromARGB(255, 249, 185, 185),
                                child: const Icon(
                                  Icons.monitor_heart_outlined,
                                  color: Color.fromARGB(255, 168, 0, 0),
                                ),
                              ),
                              const SizedBox(width: 15,),
                              Text(
                                "Heart Rate",
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            height: 91,
                            width: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white
                            ),
                            //child: const Placeholder(),
                          )
                        ],
                      ),
                    ),
                  );
  }
}