import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 36,
        width: 343,
        decoration: BoxDecoration(
          color: Color(0xFF767680).withOpacity(0.12),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(width: 8),
            SvgPicture.asset('icons/search.svg'),
            SizedBox(width: 8),
            Expanded(
              child: TextField(
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 17,
                  letterSpacing: -0.41,
                ),
                decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 17,
                    letterSpacing: -0.41,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            SvgPicture.asset('icons/mic.svg'),
            SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
    );
  }
}
