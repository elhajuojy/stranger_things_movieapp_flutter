import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/game-of-thrones.jpg'),
              )),
          child: null,
        ),
        const SizedBox(width: 10),
        Container(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Series",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    letterSpacing: .5,
                    fontSize: 13,
                    // fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  "Upon escaping after decades \nof imprisonment by a mortal\nwizard .",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      // letterSpacing: .5,
                      height: 1.4,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Container(
                width: Get.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/icons/hbo.png'),
                              )),
                          width: 20,
                          height: 20,
                        ),
                        const Text(
                          "by HBO",
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: 20,
                      child: Image.asset(
                        'assets/icons/bookmark-solid.png',
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
