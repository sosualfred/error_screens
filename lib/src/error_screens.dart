import 'package:flutter/material.dart';

class ErrorScreenWidget extends StatelessWidget {
  const ErrorScreenWidget({
    Key? key,
    required this.onRetry,
    this.iconColor = Colors.red,
    this.message = "An error has occurred\n Please try again in a few minutes",
    this.errorTitle = "ERROR",
    this.buttonText = "Retry",
    this.icon = Icons.highlight_remove_rounded,
    this.iconSize = 110,
    this.backgroundColor = Colors.black87,
    this.errorTexColor = Colors.red,
    this.textColor = const Color(0xFFE0E0E0),
    this.buttonBackgroundColor = const Color(0xFF616161),
    this.buttonTextColor = const Color(0xFFE0E0E0),
    this.width = double.infinity,
    this.height = double.infinity,
  }) : super(key: key);

  final double width;
  final double height;
  final String errorTitle;
  final String message;
  final String buttonText;
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final Color backgroundColor;
  final Color textColor;
  final Color errorTexColor;
  final Color buttonBackgroundColor;
  final Color buttonTextColor;
  final Function onRetry;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Icon(
                icon,
                color: iconColor,
                size: iconSize,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                errorTitle,
                style: TextStyle(
                  color: errorTexColor,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Column(
            children: [
              Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: buttonBackgroundColor,
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.55, 40),
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: buttonTextColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
