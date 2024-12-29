import 'package:c13_sat_islami/core/theme/app_colors.dart';
import 'package:c13_sat_islami/models/recent_data.dart';
import 'package:flutter/material.dart';

class RecentCardWidget extends StatelessWidget {
  final RecentData recentData;

  const RecentCardWidget({
    super.key,
    required this.recentData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                recentData.suraNameEN,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                recentData.suraNameAR,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                recentData.suraVerses,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Image.asset("assets/images/recent_img.png"),
        ],
      ),
    );
  }
}
