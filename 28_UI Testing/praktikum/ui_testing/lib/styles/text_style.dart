import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_testing/styles/color_style.dart';

class TextCustome {
  TextStyle m3Medium = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: ColorStyle().m3Black,
  );

  TextStyle m3TitleMedium = GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: ColorStyle().blue,
  );

  TextStyle m3Title = GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: ColorStyle().m3Black,
  );
}
