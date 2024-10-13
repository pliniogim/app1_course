import 'package:app1_course/models/course.dart';
import 'package:app1_course/screens/home/detail/widget/course_description.dart';
import 'package:app1_course/screens/home/detail/widget/course_progress.dart';
import 'package:app1_course/screens/home/detail/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Course course;
  const DetailPage(this.course);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(course),
          CourseDescription(course),
          CourseProgress(),
        ],
      ),
    ));
  }
}
