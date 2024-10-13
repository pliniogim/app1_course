import 'package:app1_course/constants/colors.dart';
import 'package:app1_course/screens/home/widget/active_course.dart';
import 'package:app1_course/screens/home/widget/emoji_text.dart';
import 'package:app1_course/screens/home/widget/feature_course.dart';
import 'package:app1_course/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const EmojiText(),
            const SearchInput(),
            FeatureCourse(),
            const ActiveCourse(),
          ],
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackground,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          icon: Container(
            padding: const EdgeInsets.only(bottom: 5),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: kAccent,
                  width: 2,
                ),
              ),
            ),
            child: const Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: 'calendar',
          icon: Image.asset(
            'assets/icons/calendar.png',
            width: 20,
          ),
        ),
        BottomNavigationBarItem(
          label: 'bookmark',
          icon: Image.asset(
            'assets/icons/bookmark.png',
            width: 20,
          ),
        ),
        BottomNavigationBarItem(
          label: 'user',
          icon: Image.asset(
            'assets/icons/user.png',
            width: 20,
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          'Hello!',
          style: TextStyle(
            color: kFontLight,
            fontSize: 16,
          ),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 25, top: 10),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: kFontLight.withOpacity(0.5),
                    width: 2,
                  )),
              width: 38,
              child: Image.asset('assets/icons/notification.png'),
            ),
            Positioned(
              top: 15,
              right: 30,
              child: Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  color: kAccent,
                  shape: BoxShape.circle,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
