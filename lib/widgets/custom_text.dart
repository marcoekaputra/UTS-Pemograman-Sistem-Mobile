import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Saya memilih font Plus Jakarta Sans dari Google Fonts karena memiliki geometri modern yang bersih dan tingkat keterbacaan tinggi di layar mobile.
// Gaya tampilan dipadukan dengan palet warna hangat (Deep Orange & Dark Charcoal) untuk membangkitkan kesan kuliner kantin yang segar, ramah, dan rapi.
// Parameter ukuran, ketebalan, dan warna dibuat fleksibel agar satu widget ini konsisten digunakan di seluruh hierarki teks aplikasi.
class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign? textAlign;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.normal,
    this.color = const Color(0xFF2D2D2D),
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.plusJakartaSans(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}