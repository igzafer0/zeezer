import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'dart:math' as math;

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
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  width: 117,
                  height: 24,
                  child: Image.asset("logo.png"),
                ),
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
                freeCard(context),
                premiumCard(context),
                yearPremiumCard(context),
                familyCard(context),
                hifiCard(context),
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
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 50),
                  child: Text(
                    "SSS",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                zeezerNedir(context),
                zeezerCost(context),
                zeezerUse(context),
                zeezerCancel(context),
                zeezerListen(context),
                Container(
                  width: responsiveSize(context),
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Text(
                    "Bu tekliflerden faydalanmak için hiçbir taahhütte bulunman gerekmiyor, istediğin an üyeliğini iptal edebilirsin. Bu teklifler önceden veya şu anda herhangi bir Deezer üyeliği bulunmayan, önceden herhangi bir Deezer promosyonundan faydalanmamış ve önceden hiçbir Deezer üyeliği deneme süresini kullanmamış olan kullanıcılar için geçerlidir. Bu teklifler başka bir teklifle birleştirilemez. Bunlar tek üye için sadece bir defa faydalanılabilen tekliflerdir.",
                    style: GoogleFonts.roboto(
                        textStyle:
                            const TextStyle(color: Colors.grey, fontSize: 12)),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.grey.shade800),
                Container(
                  width: responsiveSize(context),
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
                footer(context),
              ],
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }

  Widget footer(context) {
    if (MediaQuery.of(context).size.width < 800) {
      return Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 40, left: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: deezerColumn()),
                Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: kesfetColumn()),
                Container(
                    margin: const EdgeInsets.only(top: 40), child: bizColumn()),
                Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: yasalColumn())
              ]));
    } else {
      return Container(
          margin: const EdgeInsets.only(top: 40),
          width: MediaQuery.of(context).size.width,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                deezerColumn(),
                kesfetColumn(),
                bizColumn(),
                yasalColumn()
              ]));
    }
  }

  Widget deezerColumn() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Zeezer",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Üyelik seçenekleri",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Özellikler",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Cihazlar",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Yardım",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Hakkımızda",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Kariyer",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    ]);
  }

  Widget kesfetColumn() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Keşfet",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Tüm Kanallar",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Listeler",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "En popüler prodüksiyon",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Yeni çıkanlar",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Evde kal",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    ]);
  }

  Widget bizColumn() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Biz kimiz?",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Müzisyenler ve podcast yayıncıları",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Geliştiriciler",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Basın",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    ]);
  }

  Widget yasalColumn() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Yasal bilgi",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Yasal bilgiler",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Kullanım şartları ve koşulları",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Gizlilik ilkesi",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Çerezler",
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    ]);
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
          width: responsiveSize(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: responsiveSize(context) - 32,
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
          width: responsiveSize(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: responsiveSize(context) - 32,
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
          width: responsiveSize(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: responsiveSize(context) - 32,
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
          width: responsiveSize(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: responsiveSize(context) - 32,
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
          width: responsiveSize(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: responsiveSize(context) - 32,
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

  Widget freeCard(context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      width: responsiveSize(context),
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

  Widget premiumCard(context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      width: responsiveSize(context),
      constraints: const BoxConstraints(),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromARGB(255, 184, 79, 221),
            Color.fromARGB(255, 73, 101, 244),
            Color.fromARGB(255, 46, 251, 116)
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
                    text: 'Premium',
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
                "İstediğin şarkıyı seçip reklamsız çalabilir, ayrıca en sevdiğin şarkıları indirip çevrimdışı dinleyebilirsin.\nTüm cihazlarında dinle.",
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
            child: Text("sonrasında ayda 17,99 TL.",
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

  Widget yearPremiumCard(context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      width: responsiveSize(context),
      constraints: const BoxConstraints(),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromARGB(255, 184, 79, 221),
            Color.fromARGB(255, 73, 101, 244),
            Color.fromARGB(255, 46, 251, 116)
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
                    text: 'Premium\nYıllık',
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
                "zeezer Premium üyeliğinin tüm avantajları indirimli bir yıllık fiyata.",
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
                "ÜYE OL",
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
                  "ÜYE OL",
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
            child: Text("%25 indirim",
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
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Yıllık ödemeyle ',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  TextSpan(
                    text: '215,88 TL',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        decoration: TextDecoration.lineThrough),
                  ),
                  TextSpan(
                    text: ' yerine 161,91 TL',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 400,
            margin: const EdgeInsets.only(top: 20),
            child: Text("1 yıl taahüt.",
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

  Widget familyCard(context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      width: responsiveSize(context),
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

  Widget hifiCard(context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      width: responsiveSize(context),
      constraints: const BoxConstraints(),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromARGB(255, 247, 226, 174),
            Color.fromARGB(255, 246, 229, 184),
            Color.fromARGB(255, 228, 202, 141),
            Color.fromARGB(255, 210, 176, 98),
            Color.fromARGB(255, 204, 165, 85),
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
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w200),
                  ),
                  TextSpan(
                    text: 'HiFi',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 28),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 400,
            margin: const EdgeInsets.only(top: 20),
            child: Text("En üst seviye müzik deneyimi.",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                )),
          ),
          Container(
            width: 400,
            margin: const EdgeInsets.only(top: 20),
            child: Text(
                "zeezer Premium üyeliğinin tüm avantajlarının yanında Yüksek doğrulukta ses.",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                )),
          ),
          Container(
            width: 400,
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
                "Desteklenen ses cihazları arasında: Sonos, Sony, Devialet, Harman Kardon, Denon, Bang & Olufsen, Cabasse ve daha fazlası var",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.black,
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
                  color: Colors.black,
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
                  color: Colors.black,
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
                  color: Colors.black,
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
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                )),
          ),
        ],
      ),
    );
  }

  double responsiveSize(context) {
    if (MediaQuery.of(context).size.width > 1100) {
      return MediaQuery.of(context).size.width / 2;
    } else if (MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1100) {
      return MediaQuery.of(context).size.width / 1.5;
    } else {
      return MediaQuery.of(context).size.width - 40;
    }
  }
}
