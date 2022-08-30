import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:sertifikasiku/components/pelatihan_card.dart';
import 'package:sertifikasiku/components/transaksi_card.dart';
import 'package:sertifikasiku/values/color.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class TransaksikuPage extends StatefulWidget {
  const TransaksikuPage({Key? key}) : super(key: key);

  @override
  TransaksikuPageState createState() => TransaksikuPageState();
}

class TransaksikuPageState extends State<TransaksikuPage> {
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
                        SvgPicture.asset('assets/images/transaksiku.svg',
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
                                    text: "Transaksiku",
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
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(context, CupertinoPageRoute(builder: (context) {
                    //     return const UndanganDetailPage();
                    //   }));
                    // },
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.only(
                          bottom: 20, top: 20, left: 15, right: 15),
                      decoration: const BoxDecoration(
                          color: whiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.09),
                                blurRadius: 15)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                        style: TextStyle(
                                            fontFamily: 'Semibold',
                                            fontSize: 13,
                                            color: headlineColor),
                                        children: [
                                          TextSpan(
                                              text: "INV-14220523094851",
                                              style: TextStyle(
                                                  color: headlineColor)),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    RichText(
                                      text: const TextSpan(
                                        style: TextStyle(
                                            fontFamily: 'Semibold',
                                            fontSize: 12,
                                            color: headlineColor),
                                        children: [
                                          TextSpan(
                                              text: "24 Apr 2022",
                                              style: TextStyle(
                                                  color: disabledColor)),
                                        ],
                                      ),
                                    ),
                                  ]),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xFFf8f8f8),
                                    borderRadius: BorderRadius.circular(30.0)),
                                padding: const EdgeInsets.only(
                                    top: 3, bottom: 6, left: 20, right: 20),
                                child: const Text(
                                  "Sudah Dibayar",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: accentColor,
                                      fontSize: 10,
                                      height: 1.7,
                                      fontFamily: 'Semibold'),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          kelasList(
                              "assets/images/kelas_thumbnail_1.png",
                              "Bangun website performa bagus dari 0 dengan Vue JS",
                              "Sertifikasi Kompetensi"),
                          const SizedBox(height: 15),
                          kelasList(
                              "assets/images/kelas_thumbnail_2.png",
                              "Sukses ngiklan cermat di marketplace",
                              "Prakerja"),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/images/gift.svg',
                                  height: 24),
                              const SizedBox(width: 10),
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                      fontFamily: 'Medium',
                                      fontSize: 13,
                                      color: textColor),
                                  children: [
                                    TextSpan(
                                        text: "Kupon Tester - TST22PHf7",
                                        style:
                                            TextStyle(color: primaryColor, fontFamily: 'Semibold')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          MasonryGrid(column: 2, children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 5),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                        fontFamily: 'Semibold',
                                        fontSize: 11,
                                        color: headlineColor),
                                    children: [
                                      TextSpan(
                                          text: "Total Belanja",
                                          style:
                                              TextStyle(color: disabledColor)),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 5),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                        fontFamily: 'Bold',
                                        fontSize: 15,
                                        color: accentColor),
                                    children: [
                                      TextSpan(
                                          text: "Rp. 200.000",
                                          style: TextStyle(color: accentColor)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  // Navigator.push(context,
                                  //     CupertinoPageRoute(builder: (context) {
                                  //   return const SignInPage();
                                  // }));
                                },
                                child: const Text(
                                  "Beri Ulasan",
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.white,
                                    fontFamily: 'Semibold',
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: primaryColor,
                                )),
                          ])
                        ],
                      ),
                    ),
                  ),
                  transaksiCard(
                      "assets/images/kelas_thumbnail_1.png",
                      "Bangun website dari 0 dengan Vue JS",
                      "Sertifikasi Kompetensi",
                      "INV-14220523094851",
                      "24 Apr 2022",
                      1,
                      "400.000",
                      context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row kelasList(String image, String name, String category) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image(
          width: 70,
          height: 70,
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      const SizedBox(
        width: 15,
      ),
      Flexible(
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                style: const TextStyle(
                    fontFamily: 'Bold', fontSize: 13, color: textColor),
                children: [
                  TextSpan(
                      text: name,
                      style:
                          const TextStyle(color: headlineColor, height: 1.5)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SvgPicture.asset('assets/images/sertifikasi_profesi.svg',
                    height: 30),
                const SizedBox(width: 10),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        fontFamily: 'Medium', fontSize: 12, color: textColor),
                    children: [
                      TextSpan(
                          text: category,
                          style: const TextStyle(color: textColor)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
