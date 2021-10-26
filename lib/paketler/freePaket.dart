// ignore_for_file: camel_case_types, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:zeezer/responsive/responsive.dart';

class freePaket extends StatelessWidget {
  const freePaket({Key? key}) : super(key: key);

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
            Color.fromARGB(255, 107, 66, 180),
            Color.fromARGB(255, 148, 58, 171)
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: RichText(
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
                    text: 'Free',
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
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
                "Müzik, podcast'ler ve radyoyla birlikte senin için hazırlanmış öneriler.",
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
                "ÜCRETSİZ KAYDOL",
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
                  "ÜCRETSİZ KAYDOL",
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
            margin: const EdgeInsets.only(top: 30),
            child: Text("Ödeme yapman gerekmiyor",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                )),
          ),
          Container(
            width: 400,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
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
