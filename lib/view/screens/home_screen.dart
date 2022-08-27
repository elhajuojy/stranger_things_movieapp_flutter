import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_ui/core/color.dart';

import '../widgets/movecard_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CustomAppBar(),
              SizedBox(height: Get.height * 0.04),
              Container(
                height: Get.width + 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/stangerthings.jpg'),
                    )),
                child: null,
              ),
              Container(
                width: Get.width / 2,
                height: 40,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black38,
                      ),
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black87,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured Today",
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          // color: Colors.black,
                          letterSpacing: .5,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        letterSpacing: .5,
                        fontSize: 16,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const MovieCard(),
              const SizedBox(height: 30),
              Container(
                width: Get.width,
                height: Get.height * 0.09,
                decoration: BoxDecoration(
                    color: AppColor.navgationBackgroundColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      BottomNavIcon(
                        image: 'assets/icons/bars-staggered-solid.png',
                        imgheight: 15,
                      ),
                      BottomNavIcon(
                        image: 'assets/icons/play-solid.png',
                        imgheight: 20,
                      ),
                      BottomNavIcon(
                        image: 'assets/icons/house-chimney-solid.png',
                        imgheight: 30,
                      ),
                      BottomNavIcon(
                        image: 'assets/icons/bookmark-solid.png',
                        imgheight: 20,
                      ),
                      BottomNavIcon(
                        image: 'assets/icons/bell-solid.png',
                        imgheight: 20,
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon({
    Key? key,
    required this.image,
    required this.imgheight,
  }) : super(key: key);
  final String image;
  final double imgheight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        print("object");
      }),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: imgheight,
        child: Image.asset(
          image,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.menu),
        Text(
          "PIXMAG",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryBlueColor,
          ),
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(Icons.search),
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/avatar.png'),
                  )),
              width: 25,
              height: 25,
            )
          ],
        )
      ],
    );
  }
}
