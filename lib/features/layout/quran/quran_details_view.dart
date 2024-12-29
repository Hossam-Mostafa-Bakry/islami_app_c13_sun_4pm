import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/core/constants/app_assets.dart';
import '/core/theme/app_colors.dart';
import '../../../models/sura_data_model.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "QuranDetailsView";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraData;

    if (versesList.isEmpty) loadData(args.id.toString());

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppAssets.quranDetailsImg,
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: AppColors.primaryColor),
          title: Text(
            args.nameEN,
            style: TextStyle(
              fontFamily: "Janna",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 40),
              child: Text(
                args.nameAR,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) => Text(
                  "${versesList[index]} [${index + 1}]",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
                itemCount: versesList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loadData(String suraID) async {
    String content = await rootBundle.loadString("assets/files/$suraID.txt");
    setState(() {
      versesList = content.split("\n");
      print(content);
    });
  }
}
