import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sertifikasiku/pages/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:sertifikasiku/pages/pelatihanku.dart';
import 'package:sertifikasiku/pages/tryout.dart';
import 'package:sertifikasiku/values/color.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:sertifikasiku/components/pembelajaran_card.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class DetailBelajarPage extends StatefulWidget {
  DetailBelajarPage({Key? key}) : super(key: key);

  @override
  State<DetailBelajarPage> createState() => _DetailBelajarPageState();
}

class _DetailBelajarPageState extends State<DetailBelajarPage> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                    child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (_) =>
                                            const PelatihankuPage())),
                                icon: const Icon(
                                  Ionicons.arrow_back_outline,
                                  size: 24,
                                  color: headlineColor,
                                ),
                              ),
                              RichText(
                                  text: const TextSpan(
                                      style: TextStyle(
                                          fontFamily: 'bold',
                                          fontSize: 16,
                                          color: textColor),
                                      children: [
                                    TextSpan(
                                        text: "Certified Securities...",
                                        style: TextStyle(color: headlineColor))
                                  ])),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  RichText(
                                      text: const TextSpan(
                                          style: TextStyle(
                                              fontFamily: 'bold',
                                              fontSize: 10,
                                              color: textColor),
                                          children: [
                                        TextSpan(
                                            text: "65%",
                                            style:
                                                TextStyle(color: headlineColor))
                                      ])),
                                  const CircularProgressIndicator(
                                    value: 1.0,
                                    strokeWidth: 4.0,
                                    color: Color.fromARGB(255, 221, 221, 221),
                                  ),
                                  const CircularProgressIndicator(
                                    value: 0.8,
                                    strokeWidth: 4.0,
                                    color: accentColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: 185,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/dummy_person.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        gradient: const LinearGradient(
                                            colors: [
                                              const Color(0x0000),
                                              Color.fromARGB(160, 0, 0, 0)
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter)),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, bottom: 10),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/images/play_video.svg',
                                            height: 20,
                                            width: 20,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          SvgPicture.asset(
                                            'assets/images/Volume-Up.svg',
                                            height: 30,
                                            width: 30,
                                          ),
                                          Container(
                                            width: 200,
                                            height: 20,
                                            child: FlutterSlider(
                                              handler: FlutterSliderHandler(
                                                  decoration:
                                                      const BoxDecoration(),
                                                  child: Container(
                                                    height: 20,
                                                    width: 20,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25.0),
                                                        color: Colors.white),
                                                  )),
                                              values: [40],
                                              max: 100,
                                              min: 0,
                                              trackBar: FlutterSliderTrackBar(
                                                  activeTrackBar: BoxDecoration(
                                                      gradient:
                                                          const LinearGradient(
                                                              colors: [
                                                            primaryColor,
                                                            accentColor
                                                          ],
                                                              begin: Alignment
                                                                  .topLeft,
                                                              end: Alignment
                                                                  .bottomRight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  activeTrackBarHeight: 8,
                                                  inactiveTrackBarHeight: 8,
                                                  inactiveTrackBar:
                                                      BoxDecoration(
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              243, 243, 243),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5))),
                                              onDragging: (handlerIndex,
                                                  lowerValue, upperValue) {},
                                            ),
                                          ),
                                          SvgPicture.asset(
                                              'assets/images/Expand_ico.svg')
                                        ]),
                                  ),
                                ],
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                      fontFamily: 'bold',
                                      fontSize: 17,
                                      color: textColor),
                                  children: [
                                TextSpan(
                                    text:
                                        "Menetapkan Risiko - Risiko yang akan dilakukan tindakan penanganan Selanjutnya PART 2",
                                    style: TextStyle(color: headlineColor))
                              ])),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 80,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/Stopwatch.svg'),
                                    RichText(
                                        text: const TextSpan(
                                            style: TextStyle(
                                                fontFamily: 'medium',
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                    255, 125, 125, 125)),
                                            children: [
                                          TextSpan(
                                              text: "9 Menit",
                                              style: TextStyle(
                                                  color: headlineColor))
                                        ])),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              SizedBox(
                                width: 115,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          color: const Color.fromARGB(
                                              255, 238, 238, 238)),
                                    ),
                                    RichText(
                                        text: const TextSpan(
                                            style: TextStyle(
                                                fontFamily: 'medium',
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                    255, 125, 125, 125)),
                                            children: [
                                          TextSpan(
                                              text: "Belum Selesai",
                                              style: TextStyle(
                                                  color: headlineColor))
                                        ])),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 125,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(15.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          color: const Color.fromARGB(
                                              255, 238, 238, 238)),
                                      child: const Icon(Ionicons.chevron_back),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(15.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          color: const Color.fromARGB(
                                              255, 238, 238, 238)),
                                      child:
                                          const Icon(Ionicons.chevron_forward),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/images/Check.svg'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 10),
                                      child: RichText(
                                          text: const TextSpan(
                                              style: TextStyle(
                                                  fontFamily: 'semibold',
                                                  fontSize: 13,
                                                  color: textColor),
                                              children: [
                                            TextSpan(
                                                text: "Selesaikan",
                                                style: TextStyle(
                                                    color: Colors.white))
                                          ])),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  showMaterialModalBottomSheet(
                                      backgroundColor:
                                          const Color.fromARGB(139, 0, 0, 0),
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const AlertDialog(
                                            alignment: Alignment.bottomCenter,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25.0))),
                                            insetPadding: EdgeInsets.zero,
                                            contentPadding: EdgeInsets.only(
                                                left: 23, right: 23, top: 30),
                                            titlePadding: EdgeInsets.zero,
                                            content: Konsultasi());
                                      });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 60,
                                            color:
                                                Color.fromARGB(29, 57, 90, 108),
                                            offset: Offset(1, 8))
                                      ]),
                                  child: Card(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            child: Row(children: [
                                              SvgPicture.asset(
                                                'assets/images/chat_ico.svg',
                                                height: 30,
                                                width: 30,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              RichText(
                                                  text: const TextSpan(
                                                      style: TextStyle(
                                                          fontFamily: 'bold',
                                                          fontSize: 13,
                                                          color: textColor),
                                                      children: [
                                                    TextSpan(
                                                        text: "Konsultasi",
                                                        style: TextStyle(
                                                            color:
                                                                headlineColor))
                                                  ])),
                                            ]),
                                          ),
                                          const Icon(Ionicons.chevron_forward)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              //colapsable one
                              const SizedBox(height: 5),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: const [
                                      BoxShadow(
                                          blurRadius: 60,
                                          color:
                                              Color.fromARGB(29, 57, 90, 108),
                                          offset: Offset(1, 8))
                                    ]),
                                child: Card(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Theme(
                                    data: ThemeData().copyWith(
                                        dividerColor: Colors.transparent),
                                    child: ExpansionTile(
                                      tilePadding: const EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                          top: 5,
                                          bottom: 5),
                                      trailing: Icon(_customTileExpanded
                                          ? Ionicons.chevron_down
                                          : Ionicons.chevron_up),
                                      collapsedIconColor: Colors.black,
                                      iconColor: Colors.black,
                                      title: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        25.0)),
                                            child: RichText(
                                                text: const TextSpan(
                                                    style: TextStyle(
                                                        fontFamily: 'bold',
                                                        fontSize: 12,
                                                        color: textColor),
                                                    children: [
                                                  TextSpan(
                                                      text: "1",
                                                      style: TextStyle(
                                                          color: Colors.white))
                                                ])),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                  text: const TextSpan(
                                                      style: TextStyle(
                                                          fontFamily: 'bold',
                                                          fontSize: 13,
                                                          color: textColor),
                                                      children: [
                                                    TextSpan(
                                                        text: "Overview",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black))
                                                  ])),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 160,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    RichText(
                                                        text: const TextSpan(
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'medium',
                                                                fontSize: 11,
                                                                color:
                                                                    textColor),
                                                            children: [
                                                          TextSpan(
                                                              text:
                                                                  "3 pembelajaran",
                                                              style: TextStyle(
                                                                  color:
                                                                      textColor))
                                                        ])),
                                                    SvgPicture.asset(
                                                      'assets/images/dot.svg',
                                                      height: 6,
                                                      width: 6,
                                                    ),
                                                    RichText(
                                                        text: const TextSpan(
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'semibold',
                                                                fontSize: 11,
                                                                color:
                                                                    textColor),
                                                            children: [
                                                          TextSpan(
                                                              text: "1 Selesai",
                                                              style: TextStyle(
                                                                  color:
                                                                      accentColor))
                                                        ])),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      children: [
                                        ListTile(
                                          title: Container(
                                              padding: const EdgeInsets.only(
                                                  top: 15),
                                              height: 195,
                                              decoration: const BoxDecoration(
                                                  border: const Border(
                                                      top: BorderSide(
                                                          color: Color.fromARGB(
                                                              255,
                                                              239,
                                                              239,
                                                              239),
                                                          width: 1.0))),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                            'assets/images/accent_play.svg',
                                                            height: 30,
                                                            width: 30,
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              RichText(
                                                                  text: const TextSpan(
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'bold',
                                                                          fontSize:
                                                                              13,
                                                                          color:
                                                                              textColor),
                                                                      children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Prinsip dan Kerangka Kerja",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.black))
                                                                  ])),
                                                              const SizedBox(
                                                                height: 5,
                                                              ),
                                                              RichText(
                                                                  text: const TextSpan(
                                                                      style: TextStyle(
                                                                          fontFamily: 'medium',
                                                                          fontSize: 11,
                                                                          color: textColor),
                                                                      children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "10 pembelajaran",
                                                                        style: TextStyle(
                                                                            color:
                                                                                textColor))
                                                                  ])),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SvgPicture.asset(
                                                        'assets/images/Done.svg',
                                                        height: 30,
                                                        width: 30,
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 15,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                            'assets/images/accent_play.svg',
                                                            height: 30,
                                                            width: 30,
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              RichText(
                                                                  text: const TextSpan(
                                                                      style: TextStyle(
                                                                          fontFamily: 'bold',
                                                                          fontSize: 13,
                                                                          color: textColor),
                                                                      children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Proses Managemen Resiko",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.black))
                                                                  ])),
                                                              const SizedBox(
                                                                height: 5,
                                                              ),
                                                              RichText(
                                                                  text: const TextSpan(
                                                                      style: TextStyle(
                                                                          fontFamily: 'medium',
                                                                          fontSize: 11,
                                                                          color: textColor),
                                                                      children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "8 menit",
                                                                        style: TextStyle(
                                                                            color:
                                                                                textColor))
                                                                  ])),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 15,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SvgPicture.asset(
                                                            'assets/images/accent_play.svg',
                                                            height: 30,
                                                            width: 30,
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                width: 260,
                                                                child: RichText(
                                                                    text: const TextSpan(
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'bold',
                                                                            fontSize:
                                                                                13,
                                                                            color:
                                                                                textColor),
                                                                        children: [
                                                                      TextSpan(
                                                                          text:
                                                                              "Menetapkan Risiko - Risiko yang akan dilakukan tindakan penanganan Selanjutnya PART 2",
                                                                          style:
                                                                              TextStyle(color: Colors.black))
                                                                    ])),
                                                              ),
                                                              const SizedBox(
                                                                height: 5,
                                                              ),
                                                              SizedBox(
                                                                width: 160,
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    RichText(
                                                                        text: const TextSpan(
                                                                            style: TextStyle(
                                                                                fontFamily: 'medium',
                                                                                fontSize: 11,
                                                                                color: textColor),
                                                                            children: [
                                                                          TextSpan(
                                                                              text: "6 Menit",
                                                                              style: TextStyle(color: textColor))
                                                                        ])),
                                                                    SvgPicture
                                                                        .asset(
                                                                      'assets/images/dot.svg',
                                                                      height: 6,
                                                                      width: 6,
                                                                    ),
                                                                    RichText(
                                                                        text: const TextSpan(
                                                                            style: TextStyle(
                                                                                fontFamily: 'semibold',
                                                                                fontSize: 11,
                                                                                color: primaryColor),
                                                                            children: [
                                                                          TextSpan(
                                                                            text:
                                                                                "Anda ada disini",
                                                                          )
                                                                        ])),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                        )
                                      ],
                                      onExpansionChanged: (bool expanded) {
                                        setState(() =>
                                            _customTileExpanded = expanded);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              //not colaps
                              PembelajaranCard(
                                  "2", "Risk Owner", "4", "0", context),
                              const SizedBox(height: 5),

                              PembelajaranCard(
                                  "3",
                                  "Dokumentasi ke Risk Register",
                                  "3",
                                  "0",
                                  context),
                              const SizedBox(height: 5),

                              PembelajaranCard("4", "Identifikasi Resiko", "4",
                                  "0", context),
                              const SizedBox(height: 5),

                              PembelajaranCard(
                                  "5",
                                  "Mendefinisikan Kriteria Risiko",
                                  "4",
                                  "0",
                                  context),
                              const SizedBox(height: 5),

                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: const [
                                      BoxShadow(
                                          blurRadius: 60,
                                          color:
                                              Color.fromARGB(29, 57, 90, 108),
                                          offset: Offset(1, 8))
                                    ]),
                                child: Card(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Theme(
                                    data: ThemeData().copyWith(
                                        dividerColor: Colors.transparent),
                                    child: ExpansionTile(
                                      tilePadding: const EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                          top: 5,
                                          bottom: 5),
                                      trailing: Icon(_customTileExpanded
                                          ? Ionicons.chevron_down
                                          : Ionicons.chevron_up),
                                      collapsedIconColor: Colors.black,
                                      iconColor: Colors.black,
                                      title: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        25.0)),
                                            child: RichText(
                                                text: const TextSpan(
                                                    style: TextStyle(
                                                        fontFamily: 'bold',
                                                        fontSize: 12,
                                                        color: textColor),
                                                    children: [
                                                  TextSpan(
                                                      text: "6",
                                                      style: TextStyle(
                                                          color: Colors.white))
                                                ])),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                  text: const TextSpan(
                                                      style: TextStyle(
                                                          fontFamily: 'bold',
                                                          fontSize: 13,
                                                          color: textColor),
                                                      children: [
                                                    TextSpan(
                                                        text: "Tryout",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black))
                                                  ])),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 160,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    RichText(
                                                        text: const TextSpan(
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'medium',
                                                                fontSize: 11,
                                                                color:
                                                                    textColor),
                                                            children: [
                                                          TextSpan(
                                                              text:
                                                                  "1 pembelajaran",
                                                              style: TextStyle(
                                                                  color:
                                                                      textColor))
                                                        ])),
                                                    SvgPicture.asset(
                                                      'assets/images/dot.svg',
                                                      height: 6,
                                                      width: 6,
                                                    ),
                                                    RichText(
                                                        text: const TextSpan(
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'semibold',
                                                                fontSize: 11,
                                                                color:
                                                                    textColor),
                                                            children: [
                                                          TextSpan(
                                                              text: "0 Selesai",
                                                              style: TextStyle(
                                                                  color:
                                                                      accentColor))
                                                        ])),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      children: [
                                        ListTile(
                                          title: GestureDetector(
                                            onTap: () => Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                    builder: (_) =>
                                                        const tryOutPage())),
                                            child: Container(
                                                padding: const EdgeInsets.only(
                                                    top: 15),
                                                height: 90,
                                                decoration: const BoxDecoration(
                                                    border: Border(
                                                        top: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    239,
                                                                    239,
                                                                    239),
                                                            width: 1.0))),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SvgPicture.asset(
                                                              'assets/images/pen.svg',
                                                              height: 30,
                                                              width: 30,
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                  width: 260,
                                                                  child:
                                                                      RichText(
                                                                          text: const TextSpan(
                                                                              style: TextStyle(fontFamily: 'bold', fontSize: 13, color: textColor),
                                                                              children: [
                                                                        TextSpan(
                                                                            text:
                                                                                "Try Out - Belajar Strategi Pemasaran Facebook Ads untuk Menjadi Spesialis Periklanan",
                                                                            style:
                                                                                TextStyle(color: Colors.black))
                                                                      ])),
                                                                ),
                                                                const SizedBox(
                                                                  height: 5,
                                                                ),
                                                                SizedBox(
                                                                  width: 160,
                                                                  child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      RichText(
                                                                          text: const TextSpan(
                                                                              style: TextStyle(fontFamily: 'medium', fontSize: 11, color: textColor),
                                                                              children: [
                                                                            TextSpan(
                                                                                text: "1 Jam",
                                                                                style: TextStyle(color: textColor))
                                                                          ])),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        )
                                      ],
                                      onExpansionChanged: (bool expanded) {
                                        setState(() =>
                                            _customTileExpanded = expanded);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 25),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Konsultasi extends StatefulWidget {
  const Konsultasi({Key? key}) : super(key: key);

  @override
  State<Konsultasi> createState() => _KonsultasiState();
}

class _KonsultasiState extends State<Konsultasi> {
  String _konsulDropdownValue = "Senin, 25 Jul 2022 - Sisa Quota 98";

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 670,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              fontFamily: 'bold',
                              fontSize: 18,
                              color: textColor),
                          children: [
                        TextSpan(
                            text: "Konsultasi",
                            style: TextStyle(color: headlineColor))
                      ])),
                  InkResponse(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Ionicons.close),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6, right: 6),
                        child: RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                  fontFamily: 'medium',
                                  fontSize: 13,
                                  height: 1.5,
                                ),
                                children: [
                              TextSpan(
                                  text: "1.",
                                  style: TextStyle(color: textColor))
                            ])),
                      ),
                      Expanded(
                        child: RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                  fontFamily: 'medium',
                                  fontSize: 13,
                                  height: 1.5,
                                ),
                                children: [
                              TextSpan(
                                  text:
                                      "Peserta yang memiliki pertanyaan selama pelatihan atau setelah menyelesaikan pelatihan dapat mengikuti sesi konsultasi bersama pelatih pada jadwal yang telah ditentukan.",
                                  style: TextStyle(color: textColor))
                            ])),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                  fontFamily: 'medium',
                                  fontSize: 13,
                                  height: 1.5,
                                ),
                                children: [
                              TextSpan(
                                  text: "2.",
                                  style: TextStyle(color: textColor))
                            ])),
                      ),
                      Expanded(
                        child: RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                  fontFamily: 'medium',
                                  fontSize: 13,
                                  height: 1.5,
                                ),
                                children: [
                              TextSpan(
                                  text:
                                      "Sesi Konsultasi dijadwalkan secara rutin setiap satu minggu sebanyak 1 kali dengan durasi konsultasi 1 jam.",
                                  style: TextStyle(color: textColor))
                            ])),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: RichText(
                        text: const TextSpan(
                            style: TextStyle(
                              fontFamily: 'bold',
                              fontSize: 13,
                            ),
                            children: [
                          TextSpan(
                              text: "Baca Selengkapnya",
                              style: TextStyle(color: primaryColor))
                        ])),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: const TextSpan(
                            style: TextStyle(
                              fontFamily: 'semibold',
                              fontSize: 14,
                            ),
                            children: [
                          TextSpan(
                              text: "Jadwal Konsultasi",
                              style: TextStyle(color: Colors.black))
                        ])),
                    const SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField<String>(
                      icon: const Icon(Ionicons.chevron_down),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide:
                                const BorderSide(color: accentColor, width: 1)),
                        contentPadding: const EdgeInsets.only(
                            left: 25, right: 25, top: 20, bottom: 20),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 226, 226, 226),
                                width: 1)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(
                                color: const Color.fromARGB(255, 226, 226, 226),
                                width: 1)),
                      ),
                      value: _konsulDropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          _konsulDropdownValue = newValue!;
                        });
                      },
                      items: <String>[
                        'Senin, 25 Jul 2022 - Sisa Quota 98',
                        '-Belum ada data'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 12,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                        text: const TextSpan(
                            style: TextStyle(
                              fontFamily: 'semibold',
                              fontSize: 14,
                            ),
                            children: [
                          TextSpan(
                              text: "Pertanyaan Kamu",
                              style: TextStyle(color: Colors.black))
                        ])),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 150,
                      child: TextFormField(
                        decoration: InputDecoration(
                          counterStyle: const TextStyle(
                            height: double.minPositive,
                          ),
                          counterText: "",
                          hintText: "Mau titip pertanyaan gak ke pengajarnya?",
                          hintStyle: const TextStyle(
                              fontFamily: 'medium',
                              fontSize: 12,
                              color: disabledColor),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                  color: accentColor, width: 1)),
                          contentPadding: const EdgeInsets.only(
                              left: 25, right: 25, top: 20, bottom: 20),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                  color:
                                      const Color.fromARGB(255, 226, 226, 226),
                                  width: 1)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 226, 226, 226),
                                  width: 1)),
                        ),
                        keyboardType: TextInputType.multiline,
                        maxLines: 8,
                        maxLength: 1000,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/images/Send.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            RichText(
                                text: const TextSpan(
                                    style: TextStyle(
                                      fontFamily: 'semibold',
                                      fontSize: 14,
                                    ),
                                    children: [
                                  TextSpan(
                                      text: "Submit",
                                      style: TextStyle(color: Colors.white))
                                ])),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
