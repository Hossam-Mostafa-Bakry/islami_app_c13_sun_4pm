import 'package:c13_sat_islami/core/constants/app_assets.dart';
import 'package:c13_sat_islami/features/layout/quran/quran_details_view.dart';
import 'package:c13_sat_islami/features/layout/quran/widgets/recent_card_widget.dart';
import 'package:c13_sat_islami/features/layout/quran/widgets/sura_card_widegt.dart';
import 'package:c13_sat_islami/models/recent_data.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../models/sura_data_model.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});

  List<RecentData> recentDataList = [
    RecentData(
      suraNameEN: "Al-Anbiya",
      suraNameAR: "الأنبياء",
      suraVerses: "112 Verses",
    ),
    RecentData(
      suraNameEN: "Al-Fatiha",
      suraNameAR: "الفاتحه",
      suraVerses: "7 Verses",
    ),
  ];
  List<SuraData> suraList = [
    SuraData(id: 1, nameEN: "Al-Fatihah", nameAR: "الفاتحه", verses: 7),
    SuraData(id: 2, nameEN: "Al-Baqarah", nameAR: "البقرة", verses: 286),
    SuraData(id: 3, nameEN: "Aal-E-Imran", nameAR: "آل عمران", verses: 200),
    SuraData(id: 4, nameEN: "An-Nisa", nameAR: "النساء", verses: 176),
    SuraData(id: 5, nameEN: "Al-Maidah", nameAR: "المائدة", verses: 120),
    SuraData(id: 6, nameEN: "Al-An'am", nameAR: "الأنعام", verses: 165),
    SuraData(id: 7, nameEN: "Al-A'raf", nameAR: "الأعراف", verses: 206),
    SuraData(id: 8, nameEN: "Al-Anfal", nameAR: "الأنفال", verses: 75),
    SuraData(id: 9, nameEN: "At-Tawbah", nameAR: "التوبة", verses: 129),
    SuraData(id: 10, nameEN: "Yunus", nameAR: "يونس", verses: 109),
    SuraData(id: 11, nameEN: "Hud", nameAR: "هود", verses: 123),
    SuraData(id: 12, nameEN: "Yusuf", nameAR: "يوسف", verses: 111),
    SuraData(id: 13, nameEN: "Ar-Ra'd", nameAR: "الرعد", verses: 43),
    SuraData(id: 14, nameEN: "Ibrahim", nameAR: "إبراهيم", verses: 52),
    SuraData(id: 15, nameEN: "Al-Hijr", nameAR: "الحجر", verses: 99),
    SuraData(id: 16, nameEN: "An-Nahl", nameAR: "النحل", verses: 128),
    SuraData(id: 17, nameEN: "Al-Isra", nameAR: "الإسراء", verses: 111),
    SuraData(id: 18, nameEN: "Al-Kahf", nameAR: "الكهف", verses: 110),
    SuraData(id: 19, nameEN: "Maryam", nameAR: "مريم", verses: 98),
    SuraData(id: 20, nameEN: "Ta-Ha", nameAR: "طه", verses: 135),
    SuraData(id: 21, nameEN: "Al-Anbiya", nameAR: "الأنبياء", verses: 112),
    SuraData(id: 22, nameEN: "Al-Hajj", nameAR: "الحج", verses: 78),
    SuraData(id: 23, nameEN: "Al-Mu'minun", nameAR: "المؤمنون", verses: 118),
    SuraData(id: 24, nameEN: "An-Nur", nameAR: "النّور", verses: 64),
    SuraData(id: 25, nameEN: "Al-Furqan", nameAR: "الفرقان", verses: 77),
    SuraData(id: 26, nameEN: "Ash-Shu'ara", nameAR: "الشعراء", verses: 227),
    SuraData(id: 27, nameEN: "An-Naml", nameAR: "النّمل", verses: 93),
    SuraData(id: 28, nameEN: "Al-Qasas", nameAR: "القصص", verses: 88),
    SuraData(id: 29, nameEN: "Al-Ankabut", nameAR: "العنكبوت", verses: 69),
    SuraData(id: 30, nameEN: "Ar-Rum", nameAR: "الرّوم", verses: 60),
    SuraData(id: 31, nameEN: "Luqman", nameAR: "لقمان", verses: 34),
    SuraData(id: 32, nameEN: "As-Sajda", nameAR: "السجدة", verses: 30),
    SuraData(id: 33, nameEN: "Al-Ahzab", nameAR: "الأحزاب", verses: 73),
    SuraData(id: 34, nameEN: "Saba", nameAR: "سبأ", verses: 54),
    SuraData(id: 35, nameEN: "Fatir", nameAR: "فاطر", verses: 45),
    SuraData(id: 36, nameEN: "Ya-Sin", nameAR: "يس", verses: 83),
    SuraData(id: 37, nameEN: "As-Saffat", nameAR: "الصافات", verses: 182),
    SuraData(id: 38, nameEN: "Sad", nameAR: "ص", verses: 88),
    SuraData(id: 39, nameEN: "Az-Zumar", nameAR: "الزمر", verses: 75),
    SuraData(id: 40, nameEN: "Ghafir", nameAR: "غافر", verses: 85),
    // Add the remaining SuraDatas following this pattern...
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AppAssets.quranBg,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/islami_logo.png"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                cursorColor: AppColors.primaryColor,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor,
                ),
                decoration: InputDecoration(
                  hintText: "Sura Name",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.titleTextColor,
                  ),
                  fillColor: AppColors.secondaryColor.withOpacity(0.5),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageIcon(
                      AssetImage("assets/icons/quran.png"),
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text(
                "Most Recently",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor,
                ),
              ),
            ),
            SizedBox(
              height: 155,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => RecentCardWidget(
                  recentData: recentDataList[index],
                ),
                itemCount: recentDataList.length,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text(
                "Sura List",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    QuranDetailsView.routeName,
                    arguments: suraList[index],
                  );
                },
                child: SuraCardWidget(
                  suraData: suraList[index],
                ),
              ),
              separatorBuilder: (context, index) => Divider(
                endIndent: 60,
                indent: 60,
              ),
              itemCount: suraList.length,
            ),
          ],
        ),
      ),
    );
  }
}
