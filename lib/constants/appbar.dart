import 'package:flutter/material.dart';
import 'package:banking/constants/colors.dart';

PreferredSizeWidget customAppBar(BuildContext context, String title) {
  final double screenWidth = MediaQuery.of(context).size.width;
  final double screenHeight = MediaQuery.of(context).size.height;

  final double avatarRadius = screenHeight * 0.05; // 5% of screen height
  final double textSize = screenWidth * 0.06; // 6% of screen width
  final double appBarHeight = screenHeight * 0.11; // 11% of screen height

  return PreferredSize(
    preferredSize: Size.fromHeight(appBarHeight),
    child: AppBar(
      backgroundColor: AppColor.bb,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          child: Row(
            children: [
              CircleAvatar(
                radius: avatarRadius,
                backgroundImage: AssetImage("assets/images/me.jpeg"),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(width: screenWidth * 0.04),
              Text(
                title,
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
