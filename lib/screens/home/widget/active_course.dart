import 'package:app1_course/constants/colors.dart';
import 'package:app1_course/screens/home/widget/category_title.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  const ActiveCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryTitle(
          'Currently active',
          'view all',
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          margin: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: kFontLight.withOpacity(0.1),
            border: Border.all(
              color: kFontLight.withOpacity(0.3),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/progress.png',
                      width: 60,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    children: [
                      Text(
                        'Symetry theory',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(('2 lessons left'),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kFont,
                          ))
                    ],
                  )
                ],
              ),
              CircularPercentIndicator(
                radius: 30.0,
                lineWidth: 5.0,
                percent: 0.61,
                center: const Text(
                  '61%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                progressColor: kAccent,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
