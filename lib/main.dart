import 'package:flutter/material.dart';
import 'package:plenario_virtual/Style/Colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Visao/lista_sessoes.dart';
import 'Visao/login.dart';

void main() => runApp(MyApp());

TextTheme _buildMppaTextTheme() {
  return TextTheme(
    display4: GoogleFonts.roboto(
        fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    display3: GoogleFonts.roboto(
        fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    display2: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w400),
    display1: GoogleFonts.roboto(
        fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w400),
    title: GoogleFonts.roboto(
        fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subhead: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    body1: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    body2: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.roboto(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.roboto(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );
}

ThemeData _buildMppaTheme() {
  //final ThemeData base = ThemeData.light();
  return ThemeData(
    primaryColor: principal1,
    accentColor: auxAzul80,
    backgroundColor: principal2,
    bottomAppBarColor: auxCinza40,
    buttonColor: auxCinza40,
    cardColor: auxLaranja40,
    dialogBackgroundColor: auxCinza20,
    dividerColor: principal1,
    //scaffoldBackgroundColor: principal2,
    selectedRowColor: auxAmarelo60,
    splashColor: principal1,
    textTheme: _buildMppaTextTheme(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plenário Virtual MPPA',
      theme: _buildMppaTheme(),
      routes: {
        '/': (context) => Login(),
        '/listaSessoes': (context) => ListaSessoes(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}


