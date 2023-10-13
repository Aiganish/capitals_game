//ushul tirkemenin AppBaryndagyday text koldongubuz kelse bashka,
//jakta dagy ushul "AppBArTitle" koldonup text ozgortup koldono besek bolot,title ozgortup koyo berebiz;
//___________________________________________________________________________________________________
//emi biz bul "AppBarTitle"ni bashka jakta dagy koldono alabyz bul bir,
//jakshynakay denamichnyi bolup tuzulup kaldy;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle(this.title,
      {super.key}); //anan bunu koldongon adam bersin bizge"this.title"dep bersin bizge;
//kiyin dagy ushunday stildegi texsti koldonup kalyshybyz mumkun,
//syraz ele mnogu texstin syrtynan kelsin,bul nerseni bashka jakta,
//koldongongo yngayluu bolsun;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title, //bul jerge jon ele "title" dep jazyp koyobuz;
      style: GoogleFonts.besley(
        textStyle: const TextStyle(
          color: Color.fromARGB(255, 36, 22, 22),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
