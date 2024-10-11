import 'package:app1_course/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              border: Border.all(
                color: kFontLight.withOpacity(0.3),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              cursorColor: kFontLight,
              decoration: InputDecoration(
                fillColor: kFontLight.withOpacity(0.1),
                filled: true,
                contentPadding: const EdgeInsets.all(18),
                border: InputBorder.none,
                hintText: 'Search for history...',
                hintStyle: const TextStyle(color: kFontLight),
              ),
            ),
          ),
          Positioned(
            right: 45,
            top: 35,
            child: Container(
              height: 35,
              width: 35,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: kAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset('assets/icons/search.png'),
            ),
          ),
        ],
      ),
    );
  }
}
