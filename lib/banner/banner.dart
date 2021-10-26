import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zeezer/responsive/responsive.dart';

class banner extends StatelessWidget {
  const banner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 117,
          height: 24,
        ),
        Container(
          margin: const EdgeInsets.only(top: 25),
          width: 117,
          height: 24,
          child: Image.asset("logo.png"),
        ),
        responsiveMenu(context),
      ],
    );
  }

  Widget responsiveMenu(context) {
    if (MediaQuery.of(context).size.width <= 800) {
      return Container(
        width: 117,
        margin: const EdgeInsets.only(top: 25),
        height: 24,
        child: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 36,
        ),
      );
    } else {
      return Container(
        margin: const EdgeInsets.only(top: 25, right: 50),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.white,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: const Text(
          "Giriş yap",
          style: TextStyle(
              color: Colors.white, fontFamily: "GilroyBold", fontSize: 16),
        ),
      );
    }
  }
}
