class Surah {
  final int id;
  final String englishName;
  final int numberOfAyahs;

  Surah(
      {required this.id,
      required this.englishName,
      required this.numberOfAyahs});

  factory Surah.fromJson(Map<String, dynamic> json) {
    return Surah(
      id: json['number'],
      englishName: json['englishName'],
      numberOfAyahs: json['numberOfAyahs'],
    );
  }
}
