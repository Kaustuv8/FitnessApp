import 'package:flutter/material.dart';

class KeepItUp extends StatelessWidget {
  const KeepItUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                        width: 135,
                        height: 51,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 246, 207, 207),
                        ),
                        child: Center(
                          child: Text(
                            "Keep it up! 💪",
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lato',
                            ),

                          ),
                        ),
                      );
  }
}