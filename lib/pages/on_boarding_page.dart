import 'package:baca_quran/pages/home_page.dart';
import 'package:baca_quran/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Baca Quran",
                style: titleTextStyle.copyWith(
                  fontSize: 28,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Read the quran anytime and\nanywhere",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Color(0xff87B7D0),
                ),
              ),
              const SizedBox(height: 66),
              Container(
                width: 267,
                height: 357,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/onboarding_img.png'),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Container(
                width: MediaQuery.of(context).size.width - 108,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                        (route) => false);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff285574),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: semiBold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
