import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sertifikasiku/pages/beranda.dart';
import 'package:sertifikasiku/pages/index.dart';
import 'package:sertifikasiku/values/color.dart';
import 'package:sertifikasiku/pages/beranda.dart';
import 'package:ionicons/ionicons.dart';

class DetailKelasPage extends StatefulWidget {
  const DetailKelasPage({Key? key}) : super(key: key);

  @override
  State<DetailKelasPage> createState() => _DetailKelasPageState();
}

class _DetailKelasPageState extends State<DetailKelasPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: whiteColor),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: <Widget>[
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (_) => const IndexPage())),
                                icon: const Icon(
                                  Ionicons.arrow_back_outline,
                                  size: 24,
                                  color: headlineColor,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                        text: const TextSpan(
                                            style: TextStyle(
                                                fontFamily: 'bold',
                                                fontSize: 16,
                                                color: textColor),
                                            children: [
                                          TextSpan(
                                              text: "Detail Kelas",
                                              style: TextStyle(
                                                  color: headlineColor))
                                        ]))
                                  ],
                                ),
                              ),
                              SvgPicture.asset('assets/images/Heart.svg',
                                  height: 30),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/images/video_dummy.jpg')),
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 165,
                            // child: ,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Column(
                            children: [
                              RichText(
                                  text: const TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'bold',
                                        fontSize: 16,
                                        color: headlineColor,
                                      ),
                                      children: [
                                    TextSpan(
                                        text:
                                            "Belajar Strategi Pemasaran Instagram For Business untuk Menjadi Spesialis Periklanan")
                                  ])),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                          text: const TextSpan(
                                              style: TextStyle(
                                                  fontFamily: 'bold',
                                                  fontSize: 15,
                                                  color: accentColor),
                                              children: [
                                            TextSpan(text: "RP.399.00")
                                          ])),
                                      RichText(
                                          text: const TextSpan(
                                              style: TextStyle(
                                                  fontFamily: 'semibold',
                                                  fontSize: 11,
                                                  color: disabledColor,
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                              children: [
                                            TextSpan(text: "Rp.500.000")
                                          ]))
                                    ],
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "assets/images/prakerja.png"))),
                                    height: 22,
                                    width: 68,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 220,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        SizedBox(
                                          width: 80,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/prakerja_topi.svg'),
                                              RichText(
                                                  text: const TextSpan(
                                                      style: TextStyle(
                                                          fontFamily: 'medium',
                                                          fontSize: 11,
                                                          color: Color.fromARGB(
                                                              255,
                                                              125,
                                                              125,
                                                              125)),
                                                      children: [
                                                    TextSpan(text: "Prakerja")
                                                  ]))
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 120,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/prakerja_topi.svg'),
                                              RichText(
                                                  text: const TextSpan(
                                                      style: TextStyle(
                                                          fontFamily: 'medium',
                                                          fontSize: 11,
                                                          color: Color.fromARGB(
                                                              255,
                                                              125,
                                                              125,
                                                              125)),
                                                      children: [
                                                    TextSpan(
                                                        text: "324 Bergabung")
                                                  ]))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Stack(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        height: 30,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          color: Color.fromARGB(
                                              255, 248, 248, 248),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        height: 30,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          color: Color.fromARGB(
                                              255, 248, 248, 248),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 17),
                                        height: 30,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          color: Color.fromARGB(
                                              255, 248, 248, 248),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 320,
                                        height: 30,
                                        child: TabBar(
                                          controller: _tabController,
                                          isScrollable: false,
                                          indicator: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            color: Color.fromARGB(
                                                255, 217, 240, 228),
                                          ),
                                          indicatorSize:
                                              TabBarIndicatorSize.label,
                                          labelColor: accentColor,
                                          labelStyle: TextStyle(fontSize: 11),
                                          unselectedLabelColor: Color.fromARGB(
                                              255, 125, 125, 125),
                                          padding: EdgeInsets.zero,
                                          indicatorPadding: EdgeInsets.zero,
                                          labelPadding: EdgeInsets.zero,
                                          tabs: [
                                            Tab(
                                              child: Container(
                                                  alignment: Alignment.center,
                                                  width: 100,
                                                  child: Text('Tentang')),
                                            ),
                                            Tab(
                                              child: Container(
                                                  alignment: Alignment.center,
                                                  width: 90,
                                                  child: Text('Silabus')),
                                            ),
                                            Tab(
                                              child: Container(
                                                  alignment: Alignment.center,
                                                  width: 90,
                                                  child: Text('Ulasan')),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height,
                                child: TabBarView(
                                  controller: _tabController,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              RichText(
                                                  text: const TextSpan(
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'semibold',
                                                        color: Colors.black,
                                                      ),
                                                      children: [
                                                    TextSpan(
                                                        text: 'Preview Materi')
                                                  ])),
                                              RichText(
                                                  text: const TextSpan(
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                        fontFamily: 'medium',
                                                        color: Color.fromARGB(
                                                            255, 125, 125, 125),
                                                      ),
                                                      children: [
                                                    TextSpan(
                                                        text:
                                                            '23 Video, 10 Jam')
                                                  ])),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 5, right: 5),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        offset: Offset(0, 7),
                                                        blurRadius: 15,
                                                        color: Color.fromARGB(
                                                            15, 57, 90, 108))
                                                  ]),
                                              child: Card(
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 17,
                                                          left: 12,
                                                          bottom: 17,
                                                          right: 12),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 10,
                                                                  left: 10),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Play_Icon.svg',
                                                            height: 30,
                                                            width: 30,
                                                          ),
                                                        ),
                                                        SizedBox(width: 10),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: 280,
                                                              child: RichText(
                                                                  text: const TextSpan(
                                                                      style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontFamily:
                                                                            'bold',
                                                                        color: Colors
                                                                            .black,
                                                                      ),
                                                                      children: [
                                                                    TextSpan(
                                                                        text:
                                                                            'Pengukuran Probabilitas dan Dampak dari Setiap Resiko yang Telah diidentifikasi')
                                                                  ])),
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SvgPicture.asset(
                                                                    'assets/images/Stopwatch.svg'),
                                                                SizedBox(
                                                                    width: 10),
                                                                RichText(
                                                                    text:
                                                                        const TextSpan(
                                                                            style:
                                                                                TextStyle(
                                                                              fontSize: 12,
                                                                              fontFamily: 'medium',
                                                                              color: Color.fromARGB(255, 125, 125, 125),
                                                                            ),
                                                                            children: [
                                                                      TextSpan(
                                                                          text:
                                                                              '9 Menit')
                                                                    ])),
                                                              ],
                                                            )
                                                          ],
                                                        )
                                                      ]),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            color: Colors.white,
                                            child: Column(children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                    top: 20,
                                                    left: 10,
                                                    right: 10),
                                                height: 120,
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        top: BorderSide(
                                                            width: 10,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    248,
                                                                    248,
                                                                    248)),
                                                        bottom: BorderSide(
                                                            width: 10,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    248,
                                                                    248,
                                                                    248)))),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        width: 150,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              RichText(
                                                                  text:
                                                                      const TextSpan(
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            fontFamily:
                                                                                'medium',
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                125,
                                                                                125,
                                                                                125),
                                                                          ),
                                                                          children: [
                                                                    TextSpan(
                                                                        text:
                                                                            'Mode Pembelajaran')
                                                                  ])),
                                                              SizedBox(
                                                                height: 5,
                                                              ),
                                                              RichText(
                                                                  text:
                                                                      const TextSpan(
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            fontFamily:
                                                                                'bold',
                                                                            color:
                                                                                Colors.black,
                                                                          ),
                                                                          children: [
                                                                    TextSpan(
                                                                        text:
                                                                            'LMS (Pembelajaran melalui video)')
                                                                  ])),
                                                            ]),
                                                      ),
                                                      Container(
                                                        width: 160,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              RichText(
                                                                  text:
                                                                      const TextSpan(
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            fontFamily:
                                                                                'medium',
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                125,
                                                                                125,
                                                                                125),
                                                                          ),
                                                                          children: [
                                                                    TextSpan(
                                                                        text:
                                                                            'Masa akses pembelajaran')
                                                                  ])),
                                                              SizedBox(
                                                                height: 5,
                                                              ),
                                                              RichText(
                                                                  text:
                                                                      const TextSpan(
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            fontFamily:
                                                                                'bold',
                                                                            color:
                                                                                Colors.black,
                                                                          ),
                                                                          children: [
                                                                    TextSpan(
                                                                        text:
                                                                            '365 Hari')
                                                                  ])),
                                                            ]),
                                                      )
                                                    ]),
                                              )
                                            ]),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Text('dua'),
                                    ),
                                    Container(
                                      child: Text('tiga'),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(color: whiteColor, boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(29, 57, 90, 108),
                      blurRadius: 60,
                      offset: Offset(1, 8))
                ]),
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: accentColor,
                            borderRadius: BorderRadius.circular(11)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'assets/images/Shopping_Bag.svg'),
                              const SizedBox(
                                width: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'semibold',
                                        fontSize: 13,
                                        color: whiteColor,
                                      ),
                                      children: [TextSpan(text: 'Keranjang')]))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(11)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                    fontFamily: 'semibold',
                                    fontSize: 13,
                                    color: whiteColor,
                                  ),
                                  children: [TextSpan(text: 'Beli Sekarang')])),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
