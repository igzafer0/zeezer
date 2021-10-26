import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:zeezer/banner/banner.dart';
import 'dart:math' as math;

import 'package:zeezer/paketler/ailePaket.dart';
import 'package:zeezer/paketler/freePaket.dart';
import 'package:zeezer/paketler/hifiPaket.dart';
import 'package:zeezer/paketler/premiumPaket.dart';
import 'package:zeezer/paketler/yillikPaket.dart';
import 'package:zeezer/responsive/responsive.dart';
import 'package:zeezer/sss/sss.dart';

import 'footer/footer.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 18, 22),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              width: MediaQuery.of(context).size.width,
              height: 700,
              child: Image.asset(
                "bg.png",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                const banner(),
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Text(
                      "En zahmetsiz\nses eğlencesini yakala.\nSadece zeezer'da",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 38)),
                ),
                const freePaket(),
                const premiumPaket(),
                const yillikPaket(),
                const ailePaket(),
                const hifiPaket(),
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 50),
                  child: Text(
                      "70 milyondan fazla şarkı,\npodcast ve çalma listesi.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 38)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 156,
                          height: 156,
                          alignment: Alignment.bottomLeft,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdns-images.dzcdn.net/images/playlist/5c30311a9d445dc3c9812519b1eba4ca/264x264.jpg")),
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            child: const Icon(
                              Icons.play_circle_fill,
                              color: Colors.white,
                              size: 36,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text("Türkçe hits",
                              style: GoogleFonts.roboto(color: Colors.grey)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 156,
                          height: 156,
                          margin: const EdgeInsets.only(left: 20),
                          alignment: Alignment.bottomLeft,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdns-images.dzcdn.net/images/playlist/0e9308d278ec65ef0d16c2f859b34c4d/264x264.jpg")),
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            child: const Icon(
                              Icons.play_circle_fill,
                              color: Colors.white,
                              size: 36,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text("Çok Taze",
                              style: GoogleFonts.roboto(color: Colors.grey)),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Text(
                    "Kişiye özel öneriler",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 39,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "Sen dinledikçe, biz de seni daha iyi tanıyoruz",
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 256,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 156,
                            height: 156,
                            alignment: Alignment.bottomLeft,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://e-cdns-files.dzcdn.net/cache/images/unlogged/homepage/value_for_money/Flow@2x.b079e6850d49160dfa7959095f2a02dc.png")),
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                          ),
                          Container(
                            width: 156,
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                                "Favorilerinden ve yeni şarkılardan oluşan sonsuz bir miks",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(color: Colors.grey)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 156,
                            height: 156,
                            margin: const EdgeInsets.only(left: 20),
                            alignment: Alignment.bottomLeft,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://e-cdns-files.dzcdn.net/cache/images/unlogged/homepage/value_for_money/Daily@2x.56638df5139a3b808cb60f524f7b9b2c.png")),
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                          ),
                          Container(
                            width: 156,
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                                "Sevdiğin sanatçılardan ilham alan bir miks",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(color: Colors.grey)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const sss(),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.grey.shade800),
                Container(
                  width: responsive.responsiveSize(context),
                  margin: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Download_on_the_App_Store_Badge.svg/640px-Download_on_the_App_Store_Badge.svg.png",
                        width: 170,
                        height: 45,
                      ),
                      Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Google_Play_Badge_TR.svg/512px-Google_Play_Badge_TR.svg.png",
                        width: 170,
                        height: 45,
                      ),
                    ],
                  ),
                ),
                const footer(),
              ],
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
