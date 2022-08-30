import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:sertifikasiku/pages/detail_belajar.dart';
import 'package:sertifikasiku/pages/detail_kelas.dart';
import 'package:sertifikasiku/pages/index.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sertifikasiku/pages/Selamat.dart';
import 'package:sertifikasiku/values/color.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class tryOutPage extends StatefulWidget {
  const tryOutPage({Key? key}) : super(key: key);

  @override
  State<tryOutPage> createState() => _tryOutPageState();
}

enum jawabanTryout {
  jawabSatu("Empathize, Define, Ideate, Prototype, Test"),
  jawabDua("Define, Empathize, Test, Prototype, Ideate"),
  jawabTiga("Empathize, Ideate, Define, Prototype, Test"),
  jawabEmpat("Empathize, Prototype, Ideate, Define, Test");

  const jawabanTryout(this.text);
  final String text;
}

class _tryOutPageState extends State<tryOutPage> {
  jawabanTryout? _jawaban = jawabanTryout.jawabSatu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
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
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (_) => DetailBelajarPage())),
                                  icon: const Icon(
                                    Ionicons.arrow_back_outline,
                                    size: 24,
                                    color: headlineColor,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.height * 0.25,
                                  child: RichText(
                                      text: const TextSpan(
                                          style: TextStyle(
                                              fontFamily: 'bold',
                                              fontSize: 16,
                                              color: textColor),
                                          children: [
                                        TextSpan(
                                            text: "Try Out",
                                            style:
                                                TextStyle(color: headlineColor))
                                      ])),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: const BoxDecoration(boxShadow: [
                                BoxShadow(
                                    blurRadius: 120,
                                    color: Color.fromARGB(45, 0, 0, 0))
                              ]),
                              child: Card(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            RichText(
                                                text: const TextSpan(
                                                    style: TextStyle(
                                                        fontFamily: 'medium',
                                                        fontSize: 12,
                                                        color: Color.fromARGB(
                                                            255,
                                                            125,
                                                            125,
                                                            125)),
                                                    children: [
                                                  TextSpan(
                                                    text: "Batas Waktu",
                                                  )
                                                ])),
                                            RichText(
                                                text: const TextSpan(
                                                    style: TextStyle(
                                                        fontFamily: 'medium',
                                                        fontSize: 12,
                                                        color: Color.fromARGB(
                                                            255,
                                                            125,
                                                            125,
                                                            125)),
                                                    children: [
                                                  TextSpan(
                                                    text: "00:32:24",
                                                  )
                                                ])),
                                          ],
                                        ),

                                        const SizedBox(
                                          height: 10,
                                        ),

                                        //batas waktu
                                        Stack(
                                          children: [
                                            Container(
                                              height: 10,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  color: Color.fromARGB(
                                                      255, 238, 238, 238)),
                                            ),
                                            Container(
                                              height: 10,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.35,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  gradient:
                                                      const LinearGradient(
                                                    colors: [
                                                      primaryColor,
                                                      accentColor
                                                    ],
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomRight,
                                                  )),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            //pertanyaan
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/Question.svg'),
                                    const SizedBox(
                                      width: 10,
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
                                            text: "Pertanyaan",
                                          ),
                                          TextSpan(
                                              text: " 7 ",
                                              style: TextStyle(
                                                fontFamily: 'bold',
                                                color: Colors.black,
                                              )),
                                          TextSpan(
                                            text: "dari",
                                          ),
                                          TextSpan(
                                              text: " 50 ",
                                              style: TextStyle(
                                                fontFamily: 'bold',
                                                color: Colors.black,
                                              )),
                                        ])),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  child: RichText(
                                      text: const TextSpan(
                                          style: TextStyle(
                                              fontFamily: 'bold',
                                              fontSize: 14,
                                              color: Colors.black),
                                          children: [
                                        TextSpan(
                                          text:
                                              "Dibawah ini, Mana urutan kerangka berfikir design thinking yang benar?",
                                        )
                                      ])),
                                ),
                              ],
                            ),

                            const SizedBox(
                              height: 25,
                            ),

                            //Radio button
                            Column(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        blurRadius: 120,
                                        color: Color.fromARGB(45, 0, 0, 0))
                                  ]),
                                  child: Card(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Theme(
                                      data: ThemeData(
                                          unselectedWidgetColor: textColor),
                                      child: RadioListTile(
                                          activeColor: accentColor,
                                          title: RichText(
                                              text: const TextSpan(
                                                  style: TextStyle(
                                                      fontFamily: 'semibold',
                                                      fontSize: 11,
                                                      color: Colors.black),
                                                  children: [
                                                TextSpan(
                                                  text:
                                                      "Empathize, Define, Ideate, Prototype, Test",
                                                ),
                                              ])),
                                          value: jawabanTryout.jawabSatu,
                                          groupValue: _jawaban,
                                          onChanged: (jawabanTryout? value) {
                                            setState(() {
                                              _jawaban = value;
                                            });
                                          }),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: const BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        blurRadius: 120,
                                        color: Color.fromARGB(45, 0, 0, 0))
                                  ]),
                                  child: Card(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Theme(
                                      data: ThemeData(
                                          unselectedWidgetColor: textColor),
                                      child: RadioListTile(
                                          activeColor: accentColor,
                                          title: RichText(
                                              text: const TextSpan(
                                                  style: TextStyle(
                                                      fontFamily: 'semibold',
                                                      fontSize: 11,
                                                      color: Colors.black),
                                                  children: [
                                                TextSpan(
                                                  text:
                                                      "Define, Empathize, Test, Prototype, Ideate",
                                                ),
                                              ])),
                                          value: jawabanTryout.jawabDua,
                                          groupValue: _jawaban,
                                          onChanged: (jawabanTryout? value) {
                                            setState(() {
                                              _jawaban = value;
                                            });
                                          }),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: const BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        blurRadius: 120,
                                        color: Color.fromARGB(45, 0, 0, 0))
                                  ]),
                                  child: Card(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Theme(
                                      data: ThemeData(
                                          unselectedWidgetColor: textColor),
                                      child: RadioListTile(
                                          activeColor: accentColor,
                                          title: RichText(
                                              text: const TextSpan(
                                                  style: TextStyle(
                                                      fontFamily: 'semibold',
                                                      fontSize: 11,
                                                      color: Colors.black),
                                                  children: [
                                                TextSpan(
                                                  text:
                                                      "Empathize, Ideate, Define, Prototype, Test",
                                                ),
                                              ])),
                                          value: jawabanTryout.jawabTiga,
                                          groupValue: _jawaban,
                                          onChanged: (jawabanTryout? value) {
                                            setState(() {
                                              _jawaban = value;
                                            });
                                          }),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: const BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        blurRadius: 120,
                                        color: Color.fromARGB(45, 0, 0, 0))
                                  ]),
                                  child: Card(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Theme(
                                      data: ThemeData(
                                          unselectedWidgetColor: textColor),
                                      child: RadioListTile(
                                          activeColor: accentColor,
                                          title: RichText(
                                              text: const TextSpan(
                                                  style: TextStyle(
                                                      fontFamily: 'semibold',
                                                      fontSize: 11,
                                                      color: Colors.black),
                                                  children: [
                                                TextSpan(
                                                  text:
                                                      "Empathize, Prototype, Ideate, Define, Test",
                                                ),
                                              ])),
                                          value: jawabanTryout.jawabEmpat,
                                          groupValue: _jawaban,
                                          onChanged: (jawabanTryout? value) {
                                            setState(() {
                                              _jawaban = value;
                                            });
                                          }),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                )
                              ],
                            ),
                          ]),
                        ),
                      ])),
                  Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          blurRadius: 120, color: Color.fromARGB(45, 0, 0, 0))
                    ]),
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 125,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 238, 238, 238),
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: const Icon(Ionicons.chevron_back),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 238, 238, 238),
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: const Icon(Ionicons.chevron_forward),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (_) => SelamatPage())),
                          child: Container(
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(15.0)),
                            padding: EdgeInsets.only(
                                left: 20, right: 25, top: 15, bottom: 15),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/images/Check.svg'),
                                const SizedBox(
                                  width: 10,
                                ),
                                RichText(
                                    text: const TextSpan(
                                        style: TextStyle(
                                            fontFamily: 'semibold',
                                            fontSize: 12,
                                            color: textColor),
                                        children: [
                                      TextSpan(
                                          text: "Selesaikan",
                                          style: TextStyle(color: Colors.white))
                                    ])),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
              Align(
                alignment: Alignment(0.80, 0.65),
                child: FloatingActionButton.extended(
                  elevation: 0,
                  onPressed: () {
                    showMaterialModalBottomSheet(
                        backgroundColor: const Color.fromARGB(139, 0, 0, 0),
                        context: context,
                        builder: (BuildContext context) {
                          return const AlertDialog(
                              alignment: Alignment.bottomCenter,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0))),
                              insetPadding: EdgeInsets.zero,
                              contentPadding:
                                  EdgeInsets.only(left: 23, right: 23, top: 30),
                              titlePadding: EdgeInsets.zero,
                              content: DaftarSoal());
                        });
                  },
                  label: RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              fontFamily: 'semibold',
                              fontSize: 11,
                              color: textColor),
                          children: [
                        TextSpan(
                            text: "Daftar Soal",
                            style: TextStyle(color: headlineColor))
                      ])),
                  icon: SvgPicture.asset('assets/images/Clipboard-Alt.svg'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DaftarSoal extends StatefulWidget {
  const DaftarSoal({Key? key}) : super(key: key);

  @override
  State<DaftarSoal> createState() => _DaftarSoalState();
}

class _DaftarSoalState extends State<DaftarSoal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 510,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          fontFamily: 'bold',
                          fontSize: 15,
                        ),
                        children: [
                      TextSpan(
                          text:
                              "Try Out Certified Securities Analyst (CSA) Batch 1",
                          style: TextStyle(color: headlineColor))
                    ])),
              ),
              InkResponse(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Ionicons.close),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SvgPicture.asset('assets/images/Question.svg'),
              const SizedBox(
                width: 10,
              ),
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'medium',
                        fontSize: 12,
                      ),
                      children: [
                    TextSpan(
                        text: "7 dari 50 Soal sudah dijawab ",
                        style: TextStyle(color: textColor))
                  ]))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 115,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/images/Belum_Dibuka.svg'),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                  fontFamily: 'medium',
                                  fontSize: 12,
                                ),
                                children: [
                              TextSpan(
                                  text: "Belum dijawab",
                                  style: TextStyle(color: textColor))
                            ]))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 115,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/images/Sudah_Dijawab.svg'),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                  fontFamily: 'medium',
                                  fontSize: 12,
                                ),
                                children: [
                              TextSpan(
                                  text: "Sudah di jawab",
                                  style: TextStyle(color: textColor))
                            ]))
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 115,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/images/Sedang_Dibuka.svg'),
                    RichText(
                        text: const TextSpan(
                            style: TextStyle(
                              fontFamily: 'medium',
                              fontSize: 12,
                            ),
                            children: [
                          TextSpan(
                              text: "Sedang dibuka",
                              style: TextStyle(color: textColor))
                        ]))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: CupertinoScrollbar(
              thumbVisibility: true,
              thickness: 9,
              radius: Radius.circular(25.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.39,
                child: SingleChildScrollView(
                  child: IntrinsicHeight(
                      child: Container(
                    height: MediaQuery.of(context).size.height * 0.47,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.82,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              DaftarSoalCard(
                                  textColor: Colors.white,
                                  color: primaryColor,
                                  borderColor: Colors.white,
                                  nomber: "1"),
                              DaftarSoalCard(
                                  textColor: Colors.white,
                                  color: primaryColor,
                                  borderColor: Colors.white,
                                  nomber: "2"),
                              DaftarSoalCard(
                                  textColor: Colors.white,
                                  color: primaryColor,
                                  borderColor: Colors.white,
                                  nomber: "3"),
                              DaftarSoalCard(
                                  textColor: Colors.white,
                                  color: primaryColor,
                                  borderColor: Colors.white,
                                  nomber: "4"),
                              DaftarSoalCard(
                                  textColor: Colors.white,
                                  color: primaryColor,
                                  borderColor: Colors.white,
                                  nomber: "5"),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.82,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              DaftarSoalCard(
                                  textColor: primaryColor,
                                  color: Color.fromARGB(59, 16, 156, 212),
                                  borderColor: Colors.white,
                                  nomber: "6"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "7"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "8"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "9"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "10"),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.82,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "11"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "12"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "13"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "14"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "15"),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.82,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "16"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "17"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "18"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "19"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "20"),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.82,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "21"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "22"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "23"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "24"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "25"),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.82,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "26"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "27"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "28"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "29"),
                              DaftarSoalCard(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  borderColor: borderColor,
                                  nomber: "30"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DaftarSoalCard extends StatelessWidget {
  const DaftarSoalCard(
      {Key? key,
      required this.color,
      required this.borderColor,
      required this.nomber,
      required this.textColor})
      : super(key: key);

  final Color color;
  final Color borderColor;
  final String nomber;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 55,
        width: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              width: 1.5,
              color: borderColor,
            )),
        child: RichText(
            text: TextSpan(
                style: const TextStyle(
                  fontFamily: 'semibold',
                  fontSize: 14,
                ),
                children: [
              TextSpan(text: "$nomber", style: TextStyle(color: textColor))
            ])),
      ),
    );
  }
}
