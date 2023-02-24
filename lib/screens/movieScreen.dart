import 'package:dumangas_prelimui/components/masked_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Color(0xFF19191B)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                //Changed height. Using Web Simulator. PC cannot run android emulator
                height: screenHeight * 0.4,
                width: screenWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("posters/eternals.jpg")),
                ),
              ),
            ),
            Positioned(
                top: screenHeight * 0.05,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 44,
                          width: 44,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 3,
                              color: Colors.white,
                            ),
                          ),
                          child: SvgPicture.asset("icons/back.svg")),
                      Container(
                          height: 44,
                          width: 44,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 3,
                              color: Colors.white,
                            ),
                          ),
                          child: SvgPicture.asset("icons/menu.svg")),
                    ],
                  ),
                )),
            Positioned(
              top: screenHeight * 0.42,
              right: 9,
              child: Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFFE53BB), Color(0xFF09FBD3)],
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF767680),
                  ),
                  child: Icon(Icons.play_arrow, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                //Changed height. Using Web Simulator. PC cannot run android emulator
                height: screenHeight * 0.6,
                transform:
                    Matrix4.translationValues(0, -screenHeight * 0.05, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.7,
                      child: Column(
                        children: [
                          Text(
                            "Eternals",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white.withOpacity(0.85),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "2021 - Action-Adventure-Fantasy - 2h36m",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white.withOpacity(0.75),
                            ),
                          ),
                          SizedBox(height: 20),
                          RatingBar.builder(
                            itemSize: 14,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Color(0xFFF2A33A),
                            ),
                            onRatingUpdate: (rating) {
                              debugPrint(rating.toString());
                            },
                            unratedColor: Colors.white,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "The saga of the Eternals, a race of\nimmortal beings who lived on Earth\nand shaped its history and\ncivilizations.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.75),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                        height: 2,
                        width: screenWidth * 0.8,
                        color: Colors.white.withOpacity(0.15)),
                    SizedBox(height: 19),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 23),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Casts",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white.withOpacity(0.75),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    minRadius: 16,
                                    maxRadius: 30,
                                    backgroundImage:
                                        AssetImage("casts/cast1.png"),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                      maxHeight: 50,
                                      maxWidth: 112,
                                    ),
                                    transform:
                                        Matrix4.translationValues(-6, 0, 0),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        MaskedImage(
                                          asset: "mask/mask_cast.png",
                                          mask: "mask/mask_cast.png",
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 16.0,
                                          ),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Angelina\nJolie',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                              ),
                                              maxLines: 2,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    minRadius: 16,
                                    maxRadius: 30,
                                    backgroundImage:
                                        AssetImage("casts/cast2.png"),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                      maxHeight: 50,
                                      maxWidth: 112,
                                    ),
                                    transform:
                                        Matrix4.translationValues(-6, 0, 0),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        MaskedImage(
                                          asset: "mask/mask_cast.png",
                                          mask: "mask/mask_cast.png",
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 16.0,
                                          ),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Gemma\nChan',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                              ),
                                              maxLines: 2,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    minRadius: 16,
                                    maxRadius: 30,
                                    backgroundImage:
                                        AssetImage("casts/cast3.png"),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                      maxHeight: 50,
                                      maxWidth: 112,
                                    ),
                                    transform:
                                        Matrix4.translationValues(-6, 0, 0),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        MaskedImage(
                                          asset: "mask/mask_cast.png",
                                          mask: "mask/mask_cast.png",
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 16.0,
                                          ),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Salma\nHayek',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                              ),
                                              maxLines: 2,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    minRadius: 16,
                                    maxRadius: 30,
                                    backgroundImage:
                                        AssetImage("casts/cast4.png"),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                      maxHeight: 50,
                                      maxWidth: 112,
                                    ),
                                    transform:
                                        Matrix4.translationValues(-6, 0, 0),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        MaskedImage(
                                          asset: "mask/mask_cast.png",
                                          mask: "mask/mask_cast.png",
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 16.0,
                                          ),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Richard\nMadden',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                              ),
                                              maxLines: 2,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
