import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../components/masked_image.dart';
import '../models/movie.dart';
import '../widgets/searchBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF19191B),
      extendBody: true,
      body: Center(
        child: SizedBox(
          child: Stack(
            children: [
              Positioned(
                top: -100,
                left: -100,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF09FBD3).withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 200,
                      sigmaY: 200,
                    ),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.5,
                left: screenWidth * 0.9,
                child: Container(
                  height: 166,
                  width: 166,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFE53BB).withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 200,
                      sigmaY: 200,
                    ),
                    child: Container(
                      height: 166,
                      width: 166,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -100,
                left: -100,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF09FBD3).withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 200,
                      sigmaY: 200,
                    ),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              SafeArea(
                  bottom: false,
                  child: ListView(
                    primary: true,
                    children: [
                      SizedBox(
                        height: 68,
                      ),
                      Text(
                        "What would you\nlike to watch?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SearchBar(),
                      SizedBox(height: 30),
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "New movies",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          )),
                      SizedBox(height: 19),
                      SizedBox(
                        height: 160,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: newMovies.length,
                          itemBuilder: (context, index) {
                            String mask;

                            if (index == 0) {
                              mask = "mask/mask_firstIndex.png";
                            } else if (index == newMovies.length - 1) {
                              mask = "mask/mask_lastIndex.png";
                            } else {
                              mask = "mask/mask.png";
                            }
                            return GestureDetector(
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: index == 0 ? 20 : 0),
                                  height: 160,
                                  width: 142,
                                  child: MaskedImage(
                                    asset: newMovies[index].moviePoster,
                                    mask: mask,
                                  )),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Upcoming movies",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          )),
                      SizedBox(height: 19),
                      SizedBox(
                        height: 160,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: upcomingMovies.length,
                          itemBuilder: (context, index) {
                            String mask;

                            if (index == 0) {
                              mask = "mask/mask_firstIndex.png";
                            } else if (index == upcomingMovies.length - 1) {
                              mask = "mask/mask_lastIndex.png";
                            } else {
                              mask = "mask/mask.png";
                            }
                            return GestureDetector(
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: index == 0 ? 20 : 0),
                                  height: 160,
                                  width: 142,
                                  child: MaskedImage(
                                    asset: upcomingMovies[index].moviePoster,
                                    mask: mask,
                                  )),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 64,
        width: 64,
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFE53BB).withOpacity(0.2),
              Color(0xFF09FBD3).withOpacity(0.2)
            ],
          ),
        ),
        child: Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFE53BB), Color(0xFF09FBD3)],
            ),
          ),
          child: RawMaterialButton(
            onPressed: () {},
            shape: CircleBorder(),
            fillColor: Color(0xFF404C57),
            child: SvgPicture.asset('icons/plus.svg'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: GlassmorphicContainer(
        width: screenWidth,
        height: 92,
        borderRadius: 0,
        linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white.withOpacity(0.1),
            Colors.white.withOpacity(0.1)
          ],
        ),
        border: 0,
        blur: 30,
        borderGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFE53BB), Color(0xFF09FBD3)],
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          notchMargin: 4,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("icons/home.svg"),
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("icons/playtv.svg"),
              )),
              Expanded(
                child: Text(""),
              ),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("icons/categories.svg"),
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("icons/download.svg"),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
