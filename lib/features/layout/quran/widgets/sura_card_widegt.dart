import 'package:c13_sat_islami/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../models/sura_data_model.dart';

class SuraCardWidget extends StatelessWidget {
  final SuraData suraData;

  const SuraCardWidget({
    super.key,
    required this.suraData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icons/sura_number_icn.png"))),
            child: Text(
              suraData.id.toString(),
              style: TextStyle(
                fontFamily: "Janna",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraData.nameEN,
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "${suraData.verses} Verses",
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            suraData.nameAR,
            style: TextStyle(
              fontFamily: "Janna",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          )
          // Image.asset("assets/icons/sura_number_icn.png")
        ],
      ),
    );
  }
}
