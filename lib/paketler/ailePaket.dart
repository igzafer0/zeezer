// ignore_for_file: camel_case_types, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:zeezer/responsive/responsive.dart';

class ailePaket extends StatelessWidget {
  const ailePaket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      width: responsive.responsiveSize(context),
      constraints: const BoxConstraints(),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromARGB(255, 220, 76, 17),
            Color.fromARGB(255, 254, 171, 46),
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'zeezer ',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w200),
                  ),
                  TextSpan(
                    text: 'Family',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 28),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 400,
            margin: const EdgeInsets.only(top: 20),
            child: Text("Herkes için müzik.",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                )),
          ),
          Container(
            width: 400,
            margin: const EdgeInsets.only(top: 20),
            child: Text(
                "Tüm zeezer Premium avantajlarıyla birlikte 6 ayrı hesap kullanabilirsin.",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                )),
          ),
          Container(
            width: 400,
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            child: Text("Birden fazla cihazda aynı anda dinle.",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                )),
          ),
          HoverWidget(
            child: Container(
              width: 300,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Text(
                "ÜCRETSİZ DENE",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
            hoverChild: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "ÜCRETSİZ DENE",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            onHover: (event) {},
          ),
          Container(
            width: 400,
            margin: const EdgeInsets.only(top: 20),
            child: Text("1 ay ücretsiz",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                )),
          ),
          Container(
            width: 400,
            margin: const EdgeInsets.only(top: 5),
            child: Text("sonrasında ayda 26,99 TL.",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                )),
          ),
          Container(
            width: 400,
            margin: const EdgeInsets.only(top: 20),
            child: Text("Taahhüt istenmez, istediğiniz an iptal edebilirsiniz",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                )),
          ),
          Container(
            width: 400,
            margin: const EdgeInsets.only(top: 5, bottom: 10),
            child: Text("Daha fazlasını öğren",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                )),
          ),
        ],
      ),
    );
  }
}
