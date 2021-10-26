import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';
import 'package:zeezer/responsive/responsive.dart';

class sss extends StatefulWidget {
  const sss({Key? key}) : super(key: key);

  @override
  _sssState createState() => _sssState();
}

class _sssState extends State<sss> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 50, bottom: 50),
          child: Text(
            "SSS",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        zeezerNedir(context),
        zeezerCost(context),
        zeezerUse(context),
        zeezerCancel(context),
        zeezerListen(context),
        Container(
          width: responsive.responsiveSize(context),
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.only(bottom: 50),
          child: Text(
            "Bu tekliflerden faydalanmak için hiçbir taahhütte bulunman gerekmiyor, istediğin an üyeliğini iptal edebilirsin. Bu teklifler önceden veya şu anda herhangi bir Deezer üyeliği bulunmayan, önceden herhangi bir Deezer promosyonundan faydalanmamış ve önceden hiçbir Deezer üyeliği deneme süresini kullanmamış olan kullanıcılar için geçerlidir. Bu teklifler başka bir teklifle birleştirilemez. Bunlar tek üye için sadece bir defa faydalanılabilen tekliflerdir.",
            style: GoogleFonts.roboto(
                textStyle: const TextStyle(color: Colors.grey, fontSize: 12)),
          ),
        ),
      ],
    );
  }

  bool dNedir = false,
      dCost = false,
      dUse = false,
      dCancel = false,
      dListen = false;
  Widget zeezerNedir(context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          dNedir = !dNedir;
        });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SizedBox(
          width: responsive.responsiveSize(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: responsive.responsiveSize(context) - 32,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Zeezer nedir?",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                        child: Visibility(
                          visible: dNedir,
                          child: Text(
                              "zeezer, dünya çapında 73 milyondan fazla şarkıya ve podcast'ler gibi diğer ses içeriklerine erişmeni sağlayan bir müzik akışı uygulamasıdır. Hatta bunların yanında özel hazırlanmış öneriler ve zeezer Originals ayrıcalıklarından da faydalanabilirsin.\n \nÜcretsiz olarak çevrimiçi müzik dinle, en sevdiğin şarkıları topla, çalma listeleri oluştur ve arkadaşlarınla paylaş.\n\nzeezer Premium ile içeriğini indirip çevrimdışı olarak da dinleyebilirsin.",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(
                                color: Colors.grey[100],
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ]),
              ),
              dNedir
                  ? Transform.rotate(
                      angle: math.pi / 2,
                      child: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                        size: 32,
                      ))
                  : const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 32,
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget zeezerCost(context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          dCost = !dCost;
        });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SizedBox(
          width: responsive.responsiveSize(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: responsive.responsiveSize(context) - 32,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Zeezer ne kadar?",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Visibility(
                          visible: dCost,
                          child: Text(
                              "Kaydolmak ve uygulamayı kullanmak ücretsiz! Aylık 17,99 TL gibi düşük bir ödemeyle ücretli planlarımızdan herhangi birine üye olarak daha fazla özellikten yararlanabilirsin, koşullara bağlıdır.",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(
                                color: Colors.grey[100],
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ]),
              ),
              dCost
                  ? Transform.rotate(
                      angle: math.pi / 2,
                      child: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                        size: 32,
                      ))
                  : const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 32,
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget zeezerUse(context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          dUse = !dUse;
        });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SizedBox(
          width: responsive.responsiveSize(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: responsive.responsiveSize(context) - 32,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Zeezer nasıl kullanabilirim?",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Visibility(
                          visible: dUse,
                          child: Text(
                              "Uygulamayı telefonuna, tabletine veya masaüstü bilgisayarına indir, ardından ücretsiz kaydol. Yeni hesabına giriş yaptıktan sonra, en sevdiğin müzikleri dinleyebilirsin!",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(
                                color: Colors.grey[100],
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ]),
              ),
              dUse
                  ? Transform.rotate(
                      angle: math.pi / 2,
                      child: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                        size: 32,
                      ))
                  : const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 32,
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget zeezerCancel(context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          dCancel = !dCancel;
        });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SizedBox(
          width: responsive.responsiveSize(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: responsive.responsiveSize(context) - 32,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Üyeliğimi nasıl iptal ederim?",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Visibility(
                          visible: dCancel,
                          child: Text(
                              "Hesap ayarlarından 'Üyeliğimi yönet'i seçerek mevcut bir üyeliği istediğin zaman güncelleyebilir veya iptal edebilirsin.",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(
                                color: Colors.grey[100],
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ]),
              ),
              dCancel
                  ? Transform.rotate(
                      angle: math.pi / 2,
                      child: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                        size: 32,
                      ))
                  : const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 32,
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget zeezerListen(context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          dListen = !dListen;
        });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SizedBox(
          width: responsive.responsiveSize(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: responsive.responsiveSize(context) - 32,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Zeezer'ı nerede dinleyebilirim?",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Visibility(
                          visible: dListen,
                          child: Text(
                              "Zeezer, masaüstü cihazlarda, ayrıca mobil ve tablet cihazların çoğunda desteklenir. Ayrıca belirli ev ve hoparlör cihazlarından akış ve yayın yapmak da mümkündür.\n\nzeezer Premium ile içeriğini indirip çevrimdışı olarak da dinleyebilirsin.",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(
                                color: Colors.grey[100],
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ]),
              ),
              dListen
                  ? Transform.rotate(
                      angle: math.pi / 2,
                      child: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                        size: 32,
                      ))
                  : const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 32,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
