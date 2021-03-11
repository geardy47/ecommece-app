import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: PageView.builder(
          itemBuilder: (context, index) => SplashContent(
            text: 'TOKOKU',
            image: 'assets/images/splash_1.png',
          ),
        ),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Spacer(),
              Text(
                text,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(36),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Welcome to Tokoku, Let's Shop!"),
              Spacer(flex: 2),
              Image.asset(
                image,
                height: getProportionateScreenHeight(265),
                width: getProportionateScreenWidth(235),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [],
          ),
        ),
      ],
    );
  }
}
