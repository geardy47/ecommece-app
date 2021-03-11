import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.onPress,
  }) : super(key: key);
  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        // color: kPrimaryColor,
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
      ),
    );
  }
}
