import 'package:app1_course/constants/colors.dart';
import 'package:app1_course/models/course.dart';
import 'package:flutter/material.dart';

class CourseDescription extends StatelessWidget {
  final Course course;
  const CourseDescription(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                course.authorImg,
                width: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                course.author,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                height: 5,
                width: 5,
                decoration: const BoxDecoration(
                  color: kFontLight,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.access_time_filled,
                size: 20,
                color: kAccent,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                '1h 35min',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: kFont,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            course.title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: kFont,
            ),
          ),
          const Text(
            'How we developed speech and how it\nbecame such a powerful tool, let\'s see!',
            style: TextStyle(
              wordSpacing: 2,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kFontLight,
            ),
          )
        ],
      ),
    );
  }
}
