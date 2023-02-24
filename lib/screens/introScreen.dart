import 'dart:ui';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF19191B),
      extendBody: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Positioned(
                  top: 20,
                  left: 6,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFE53BB),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 50,
                        sigmaY: 50,
                      ),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 96,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF09FBD3),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 50,
                        sigmaY: 50,
                      ),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 228,
                  width: 228,
                  child: Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: Container(
                      height: 228,
                      width: 228,
                      decoration: BoxDecoration(
                        color: Color(0xFF19191B),
                        border: Border.all(color: Color(0xFF19191B)),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomLeft,
                          image: AssetImage("assets/intro.png"),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(-1, -1),
                        end: Alignment(1, 1),
                        colors: [
                          Color(0xFFFE53BB),
                          Color(0xFF19191B),
                          Color(0xFF09FBD3)
                        ]),
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 57,
            ),
            Text(
              "Watch movies in\nVirtual Reality",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.85),
                fontWeight: FontWeight.w700,
                fontSize: 34,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Download and watch offline\nwherever you are",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.85),
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 38,
              width: 160,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: 38,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Color(0xFF19191B),
                    border: Border.all(color: Color(0xFF19191B)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(-1, 0),
                    end: Alignment(1, 0),
                    colors: [Color(0xFFFE53BB), Color(0xFF09FBD3)]),
                border: Border.all(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              height: 72,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  height: 6,
                  width: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == 0
                          ? Color(0xFF08F7FE)
                          : Colors.white.withOpacity(0.2)),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
