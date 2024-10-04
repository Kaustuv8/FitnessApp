import 'package:fitnessapp/design/colors.dart';
import 'package:flutter/material.dart';

class Calenderscroller extends StatefulWidget {
  const Calenderscroller({
    super.key,
    required this.intToDay,
    required this.intToMonth
  });
  final Map<int, String> intToDay;
  final Map<int, String> intToMonth;

  @override
  State<Calenderscroller> createState() => _CalenderscrollerState();
}

class _CalenderscrollerState extends State<Calenderscroller> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: 14,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  DateTime dayToBeDisplayed = DateTime.now().add(Duration(days: index - 5));
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      decoration: BoxDecoration(
                         color: primary1,
                         borderRadius: BorderRadius.circular(8)
                      ),
                      width: 45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${widget.intToDay[dayToBeDisplayed.weekday]}",
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "${dayToBeDisplayed.day}",
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
  }
}