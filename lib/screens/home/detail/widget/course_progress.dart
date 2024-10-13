import 'package:app1_course/constants/colors.dart';
import 'package:flutter/material.dart';

class CourseProgress extends StatelessWidget {
  const CourseProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'The progress',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: kFont,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icons/grid.png',
                width: 25,
              ),
              const SizedBox(
                width: 15,
              ),
              Image.asset(
                'assets/icons/list.png',
                width: 25,
              )
            ],
          )
        ],
      ),
    );
  }
}
