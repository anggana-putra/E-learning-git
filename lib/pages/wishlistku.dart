import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:sertifikasiku/components/pelatihan_card.dart';
import 'package:sertifikasiku/components/transaksi_card.dart';
import 'package:sertifikasiku/components/wishlist_card.dart';
import 'package:sertifikasiku/values/color.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class WishlistkuPage extends StatefulWidget {
  const WishlistkuPage({Key? key}) : super(key: key);

  @override
  WishlistkuPageState createState() => WishlistkuPageState();
}

class WishlistkuPageState extends State<WishlistkuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        SvgPicture.asset('assets/images/wishlist.svg',
                            height: 30, color: primaryColor),
                        const SizedBox(width: 15),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                  fontFamily: 'Bold',
                                  fontSize: 20,
                                  color: textColor),
                              children: [
                                TextSpan(
                                    text: "Wishlistku",
                                    style: TextStyle(color: headlineColor)),
                              ],
                            ),
                          ),
                        ),
                      ]),
                      SvgPicture.asset('assets/images/sort.svg',
                          height: 30, color: headlineColor),
                    ],
                  ),
                  const SizedBox(height: 30),
                  wishlistCard(
                      "assets/images/kelas_thumbnail_1.png",
                      "Bangun website dari 0 dengan Vue JS",
                      "Sertifikasi Kompetensi",
                      "400.000",
                      context),
                  wishlistCard(
                      "assets/images/kelas_thumbnail_2.png",
                      "Sukses ngiklan cermat di marketplace",
                      "Prakerja",
                      "300.000",
                      context),
                  wishlistCard(
                      "assets/images/kelas_thumbnail_1.png",
                      "Bangun website dari 0 dengan Vue JS",
                      "Sertifikasi Kompetensi",
                      "400.000",
                      context),
                  wishlistCard(
                      "assets/images/kelas_thumbnail_2.png",
                      "Sukses ngiklan cermat di marketplace",
                      "Prakerja",
                      "300.000",
                      context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
