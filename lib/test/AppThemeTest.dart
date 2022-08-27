import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:movie_app_ui/services/theme_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                ThemeService().switchTheme();
                log("change theme");
              },
              icon: const Icon(Icons.nightlight_outlined),
              splashColor: Colors.transparent,
              // focusColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            const Text(
              "Hello",
              style: TextStyle(fontSize: 26),
            ),
          ],
        ),
      ),
    );
  }
}
