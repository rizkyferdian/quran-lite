import 'package:baca_quran/models/surah_model.dart';
import 'package:baca_quran/theme.dart';
import 'package:flutter/material.dart';

class SurahCard extends StatelessWidget {
  final Surah surah;

  SurahCard(this.surah);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5,
                    color: Color(0xffCEDFE9),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    surah.id.toString(),
                    style: titleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Text(
                surah.englishName,
                style: titleTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const Spacer(),
              Text(
                "${surah.numberOfAyahs} Ayat",
                style: titleTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                  color: const Color(0xffCEDFE9),
                ),
              ),
            ],
          ),
          const SizedBox(height: 17),
          Container(
            width: double.infinity,
            height: 2,
            color: const Color(0xffCEDFE9),
          ),
        ],
      ),
    );
  }
}
