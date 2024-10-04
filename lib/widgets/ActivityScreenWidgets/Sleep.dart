import 'dart:math';

import 'package:flutter/material.dart';

class Sleep extends StatelessWidget {
  const Sleep({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    width: 178,
                    height: 128,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 226, 255),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 28,
                                height: 28,
                                color: Colors.purple[200],
                                child: const Icon(Icons.nightlight_round_outlined),
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                "Sleep",
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            height: 60,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 11,
                              itemBuilder: (context, index) {
                                double currentHeight = Random().nextDouble()*47;
                                return Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    height: 47,
                                    width: 8,
                                    decoration: BoxDecoration(
                                      //color: Colors.white,
                                      borderRadius: BorderRadius.circular(3)
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: currentHeight,
                                          width: 8,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(3),
                                              topRight: Radius.circular(3)
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 47 - currentHeight,
                                          width: 8,
                                          decoration: BoxDecoration(
                                            color: Colors.purple[500],
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
  }
}