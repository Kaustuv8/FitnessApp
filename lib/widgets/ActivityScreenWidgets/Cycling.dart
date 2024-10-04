import 'package:flutter/material.dart';

class Cycling extends StatelessWidget {
  const Cycling({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 222,
                      height: 218,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 25, 33, 38),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 25,
                                  height: 28,
                                  color: Colors.white,
                                  child: const Center(
                                    child: Icon(
                                      Icons.pedal_bike_outlined,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Text(
                                  "Cycling",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.white
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                          Container(
                              width: 196,
                              height: 147,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 232, 232, 232),
                              ),
                              
                            ),
                          ],
                          
                        ),
                      ),
                    ),
                  );
  }
}