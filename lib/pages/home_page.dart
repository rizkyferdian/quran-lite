import 'package:baca_quran/models/surah_model.dart';
import 'package:baca_quran/providers/surah_provider.dart';
import 'package:baca_quran/widgets/surah_card.dart';
import 'package:flutter/material.dart';
import 'package:baca_quran/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isSurah = true;

  Widget sectionTitle() {
    return Container(
      padding: EdgeInsets.only(
        top: 40,
        left: defaultMargin,
        right: defaultMargin,
      ),
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Container(
            width: 28,
            height: 12,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu_icon.png'),
              ),
            ),
          ),
          const Spacer(),
          Text(
            "Baca Quran",
            style: titleTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget welcoming() {
    return Container(
      padding: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
      margin: const EdgeInsets.only(bottom: 23),
      child: Column(
        children: [
          Text(
            "Assalamualaikum",
            style: GoogleFonts.poppins(
              fontWeight: medium,
              color: Color(0xffE9E9E9),
            ),
          ),
          Text(
            "Para Hafidz Quran",
            style: titleTextStyle.copyWith(fontWeight: semiBold),
          )
        ],
      ),
    );
  }

  Widget banner() {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 2, top: 20, bottom: 20),
        decoration: BoxDecoration(
          color: const Color(0xffE6FBFE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mari Tingkatkan baca\nAl-quran Kamu',
                  style:
                      titleTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                ),
                const SizedBox(height: 18),
                Text(
                  'Last Read',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: medium,
                    color: const Color(0xff80C8ED),
                  ),
                ),
                Text(
                  'Al-Fatihah',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: medium,
                    color: const Color(0xff1F4C63),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/banner_img.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget mainContent() {
    return Container(
      padding: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSurah = true;
                      });
                    },
                    child: Text(
                      'Surah',
                      style: titleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                        color: isSurah ? Color(0xff1F4C63) : Color(0xffCEE0E9),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  isSurah
                      ? Container(
                          width: 50,
                          height: 2,
                          color: const Color(0xffCEDFE9),
                        )
                      : const SizedBox(),
                ],
              ),
              const SizedBox(width: 30),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSurah = false;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      'Juz',
                      style: GoogleFonts.poppins(
                        fontWeight: semiBold,
                        fontSize: 16,
                        color: isSurah ? Color(0xffCEE0E9) : Color(0xff1F4C63),
                      ),
                    ),
                    isSurah
                        ? const SizedBox()
                        : Container(
                            width: 50,
                            height: 2,
                            color: const Color(0xffCEDFE9),
                          ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var surahProvider = Provider.of<SurahProvider>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sectionTitle(),
          welcoming(),
          banner(),
          Container(
            padding: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSurah = true;
                            });
                          },
                          child: Text(
                            'Surah',
                            style: titleTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                              color: isSurah
                                  ? Color(0xff1F4C63)
                                  : Color(0xffCEE0E9),
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        isSurah
                            ? Container(
                                width: 50,
                                height: 2,
                                color: const Color(0xffCEDFE9),
                              )
                            : const SizedBox(),
                      ],
                    ),
                    const SizedBox(width: 30),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSurah = false;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            'Juz',
                            style: GoogleFonts.poppins(
                              fontWeight: semiBold,
                              fontSize: 16,
                              color: isSurah
                                  ? Color(0xffCEE0E9)
                                  : Color(0xff1F4C63),
                            ),
                          ),
                          isSurah
                              ? const SizedBox()
                              : Container(
                                  width: 50,
                                  height: 2,
                                  color: const Color(0xffCEDFE9),
                                ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          isSurah
              ? Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  height: 300,
                  child: FutureBuilder<List<Surah>>(
                    future: surahProvider.fetchSurah(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ListView(
                          children: [
                            Column(
                              children: snapshot.data!.map((surah) {
                                return SurahCard(surah);
                              }).toList(),
                            ),
                          ],
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
