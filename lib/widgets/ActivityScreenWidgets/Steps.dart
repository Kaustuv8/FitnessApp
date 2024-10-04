import 'package:flutter/material.dart';

class StepsCard extends StatelessWidget {
  const StepsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                        width: 135,
                        height: 100,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: const Color.fromARGB(255, 255, 232, 198,),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 28,
                                  width: 28,
                                  color: const Color.fromARGB(255, 254, 220, 169),
                                  child: const Icon(Icons.run_circle_outlined,
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Text(
                                  "Steps",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              "999/2000",
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(height: 10,),
                            SizedBox(
                              width: 110,
                              height: 12,
                              child: Row(children: [
                                Container(
                                  width: 999/2000 * 110,
                                  decoration : BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                                Container(
                                  width: 110 - 999/2000 * 110,
                                  decoration : const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(3),
                                      bottomRight: Radius.circular(3) 
                                    ),
                                  ), 
                                ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
  }
}