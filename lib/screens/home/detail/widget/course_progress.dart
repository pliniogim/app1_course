import 'package:app1_course/constants/colors.dart';
import 'package:app1_course/models/module.dart';
import 'package:app1_course/screens/home/detail/widget/course_module.dart';
import 'package:flutter/material.dart';

class CourseProgress extends StatelessWidget {
  final modulesList = Module.generateModules();
  CourseProgress();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
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
          const SizedBox(
            height: 20,
          ),
          ...modulesList.map((e) => CourseModule(e)).toList()
          //CourseModule(modulesList[0]),
        ],
      ),
    );
  }
}
