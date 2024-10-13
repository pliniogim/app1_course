import 'package:app1_course/models/course.dart';
import 'package:app1_course/screens/home/widget/category_title.dart';
import 'package:app1_course/screens/home/widget/course_item.dart';
import 'package:flutter/material.dart';

class FeatureCourse extends StatelessWidget {
  final coursesList = Course.generateCourses();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Top of the week', 'view all'),
          Container(
              height: 300,
              child: ListView.separated(
                padding: const EdgeInsets.all(25),
                scrollDirection: Axis.horizontal,
                itemCount: coursesList.length,
                itemBuilder: (context, index) => CourseItem(coursesList[index]),
                separatorBuilder: (context, index) => const SizedBox(width: 15),
              ))
        ],
      ),
    );
  }
}
