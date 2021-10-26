import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class footer extends StatelessWidget {
  const footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
