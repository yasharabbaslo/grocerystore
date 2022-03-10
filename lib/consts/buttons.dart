import 'package:flutter/material.dart';
import 'package:grocery_store/consts/colors.dart';

class OnPrimaryButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const OnPrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: secondaryColor,
        onPrimary: primaryColor,
        textStyle: themeData.textTheme.headline6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
