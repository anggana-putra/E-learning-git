import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:sertifikasiku/components/pelatihan_card.dart';
import 'package:sertifikasiku/values/color.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class PelatihankuPage extends StatefulWidget {
  const PelatihankuPage({Key? key}) : super(key: key);

  @override
  PelatihankuPageState createState() => PelatihankuPageState();
}

class PelatihankuPageState extends State<PelatihankuPage> {
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
                  Row(children: [
                    SvgPicture.asset('assets/images/pelatihanku.svg',
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
                                text: "Pelatihanku",
                                style: TextStyle(color: headlineColor)),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(height: 20),
                  DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFFf3f3f3),
                                borderRadius: BorderRadius.circular(11)),
                            padding: const EdgeInsets.only(
                                top: 3, left: 3, right: 3, bottom: 3),
                            child: Material(
                              color: const Color(0xFFf3f3f3),
                              child: TabBar(
                                tabs: const [
                                  Tab(
                                    child: Text("Ongoing",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Semibold',
                                            color: headlineColor)),
                                  ),
                                  Tab(
                                    child: Text("Selesai",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Semibold',
                                            color: headlineColor)),
                                  ),
                                ],
                                labelColor: whiteColor,
                                indicatorPadding: const EdgeInsets.all(5),
                                unselectedLabelColor: textColor,
                                indicator: RectangularIndicator(
                                  color: whiteColor,
                                  bottomLeftRadius: 8,
                                  bottomRightRadius: 8,
                                  topLeftRadius: 8,
                                  topRightRadius: 8,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  pelatihanCard(
                      "assets/images/kelas_thumbnail_1.png",
                      "Bangun website dari 0 dengan Vue Js",
                      "Sertifikasi Kompetensi",
                      "10",
                      "28",
                      25,
                      context),
                  pelatihanCard(
                      "assets/images/kelas_thumbnail_2.png",
                      "Sukses ngiklan cermat di marketplace",
                      "Prakerja",
                      "14",
                      "28",
                      50,
                      context),
                  pelatihanCard(
                      "assets/images/kelas_thumbnail_1.png",
                      "Bangun website dari 0 dengan Vue Js",
                      "Sertifikasi Kompetensi",
                      "10",
                      "28",
                      25,
                      context),
                  pelatihanCard(
                      "assets/images/kelas_thumbnail_2.png",
                      "Sukses ngiklan cermat di marketplace",
                      "Prakerja",
                      "14",
                      "28",
                      50,
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
