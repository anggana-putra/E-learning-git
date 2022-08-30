import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:sertifikasiku/components/pelatihan_card.dart';
import 'package:sertifikasiku/components/sertifikat_card.dart';
import 'package:sertifikasiku/components/transaksi_card.dart';
import 'package:sertifikasiku/components/wishlist_card.dart';
import 'package:sertifikasiku/values/color.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class SertifikatkuPage extends StatefulWidget {
  const SertifikatkuPage({Key? key}) : super(key: key);

  @override
  SertifikatkuPageState createState() => SertifikatkuPageState();
}

class SertifikatkuPageState extends State<SertifikatkuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Ionicons.arrow_back_outline,
                            size: 24, color: headlineColor),
                      ),
                      Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/images/sertifikatku.svg',
                                  height: 30, color: primaryColor),
                              const SizedBox(width: 10),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                        fontFamily: 'Bold',
                                        fontSize: 15,
                                        color: textColor),
                                    children: [
                                      TextSpan(
                                          text: "Sertifikatku",
                                          style:
                                              TextStyle(color: headlineColor)),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  sertifikatCard(
                      "assets/images/sertifikat_1.png",
                      "Sukses ngiklan cermat di marketplace",
                      "Prakerja",
                      false,
                      true,
                      true,
                      context),
                  sertifikatCard(
                      "assets/images/sertifikat_2.png",
                      "Bangun website performa bagus dari 0 dengan Vue JS",
                      "Sertifikasi Kompetensi",
                      true,
                      false,
                      false,
                      context),
                  sertifikatCard(
                      "assets/images/sertifikat_1.png",
                      "Sukses ngiklan cermat di marketplace",
                      "Prakerja",
                      false,
                      true,
                      true,
                      context),
                  sertifikatCard(
                      "assets/images/sertifikat_2.png",
                      "Bangun website performa bagus dari 0 dengan Vue JS",
                      "Sertifikasi Kompetensi",
                      true,
                      false,
                      false,
                      context),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
