import 'package:dr_grahy/Widget/original_button.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade400,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(),
              Image.asset(
                'assets/img/intro.png',
                // height: 250,
              ),
              OriginalButton(
                text: 'Get Started',
                onPressed: () {
                  Navigator.of(context).pushNamed('login');
                },
                textColor: Colors.lightBlue,
                bgColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
